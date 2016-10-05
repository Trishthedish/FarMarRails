class MarketsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    @mymarket=Market.find(params[:id])
  end

  def edit
  end

  def destroy
  end
end
