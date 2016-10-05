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
