class MarketsController < ApplicationController
  def index
    @markets = Market.all
  end

  def new
  end

  def create
  end

  def show
    @mymarket = Market.find(params[:id])
    if @mymarket == nil
      render :file => 'public/404.html', :status => :not_found
    end
  end

  def edit
  end

  def destroy
  end
end
