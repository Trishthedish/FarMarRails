class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def new
    @myvendor = Vendor.new
    @vendor_method = :post
    @vendor_path = vendors_create_path
  end

  def create
  end

  def show
    sales_list
      total
      @myvendors = Vendor.find(params[:id])
      @myproducts=@myvendors.products
  end

  def edit
    @myvendor = Vendor.find(params[:id].to_i)
    @vendor_method = vendors_update_path(@myvendor.id)
    if @myvendor == nil
      render :file => 'public/404.html', :status => :not_found
    end
  end

  def update
    @myvendor = Vendor.find(params[:id])
    if @myvendor == nil
      render :file => 'public/404.html',
      :status => :not_found
    end
    @myvendor.name = params[:vendor][:name]
    @myvendor.num_employees = params[:vendor][:num_employees]
    redirect_to vendors_show_path(@myvendor.id)
  end


  def destroy
  end

  private
  def total
    @total_sales = []
    @myvendor = Vendor.find(params[:id].to_i)
    @mysale = Sale.all
    @mysale.each do |sale|
    if @myvendor.id == sale.vendor_id
      @total_sales << sale.amount
    @total = @total_sales.inject (0) { |result, element| result + element }
    end
    end
    return @total
  end

  def sales_list
    @sales = []
    @myvendor = Vendor.find(params[:id].to_i)
    @mysale = Sale.all
    @mysale.each do |sale|
    if @myvendor.id == sale.vendor_id
      @sales << sale
    end
    end
    return @sales
  end


end#end of class
