class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
  end

  def update
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
  end

  def create
  end

  def destroy
  end
end
