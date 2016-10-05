class MarketsController < ApplicationController
  def index
    @markets = Market.all
  end

  def new
  end

  def create
  end

  def show
    @market = Marker.find
  end

  def edit
  end

  def destroy
  end
end
