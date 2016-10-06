class MarketsController < ApplicationController
  def index
    @markets = Market.all
  end

  def new
    @market = Market.new
  end

  def create
    @params = params
    @mymarket= Market.new
    @mymarket.name = params[:market][:name]
    @mymarket.address = params[:market][:address]
    @mymarket.city = params[:market][:city]
    @mymarket.county = params[:market][:county]
    @mymarket.state = params[:market][:state]
    @mymarket.zip = params[:market][:zip]
    @mymarket.save
    redirect_to markets_index_path  
  end

  def show
    @mymarket = Market.find(params[:id])
    @myvendors=@mymarket.vendors
    if @mymarket == nil
      render :file => 'public/404.html', :status => :not_found
    end
  end

  def edit
  end

  def destroy
  end

end
