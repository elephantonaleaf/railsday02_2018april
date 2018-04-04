class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
      @restaurants = Restaurant.all
  end


  def show
      # restaurants/ 1
      # prarams[:id] = 1

  end


  def new
      @restaurant = Restaurant.new
  end


  def create
      # raise
      @restaurant = Restaurant.new(restaurant_params)
      # @restaurant = Restaurant.new(
      #   name: params[:name],
      #   address: params[:address],
      #   food_type: params[:food_type],
      #   rating: params[:rating]
      # )
      @restaurant.save
      redirect_to restaurants_path
  end


  def edit

  end


  def update
      @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)

  end


  def destroy
      @restaurant.destroy
      redirect_to restaurants_path

  end

private

  def restaurant_params
      #params
      params.require(:restaurant).permit(:food_type, :name, :address, :rating)
  end

  def set_restaurant
      @restaurant = Restaurant.find(params[:id])
  end

end
