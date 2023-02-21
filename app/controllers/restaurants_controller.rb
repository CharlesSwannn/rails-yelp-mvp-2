class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show]

  def new
    @restaurant = Restaurant.new
  end

  def create

  end

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
