class RestaurantsController < ApplicationController
before_action :find_restaurant, only: [:show, :edit, :update, :destroy, :chef]
  # this before_action takes the method of find_restaurant that I
  # put in the private params and repeats it for the show, edit, updste and
  # destroy...this way I don't have to write it each time

  def index
    @restaurants = Restaurant.all
  end

  def top
    @restaurants = Restaurant.where(rating: 5)
  end

  def chef
    @chef = @restaurant.chef
  end

# Above I have created a filter for those restaurants with a 5 star rating.
# The route is within the restaurant route (collection do get top etc...)
#   and the view is top.html.erb, where I have itterated over the restaurants
#   variable to get the top ones



  def show
  end

  def new
    @restaurant = Restaurant.new
  end


  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      redirect_to new_restaurant_path
    end
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurant_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :rating, :address, :tel_nr)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end


end


