class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    @restaurant = Restaurant.new

  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      @restaurants = Restaurant.all
      render :index, status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number,:accepts_reservations)
  end
end
