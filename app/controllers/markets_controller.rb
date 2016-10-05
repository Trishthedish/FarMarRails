class MarketsController < ApplicationController
  def index
    @markets = Market.all
  end

  def show
    @mymarket = Market.find(params[:id])
    if @mymarket == nil
      render :file => 'public/404.html', :status => :not_found
    end
  end

# would I need to write a find method... to show that once clicked.. you can see the details of each individual market.



  def new

  end

  def create
  end

  def show
    @my
  end

  def edit
  end

  def destroy
  end
end
