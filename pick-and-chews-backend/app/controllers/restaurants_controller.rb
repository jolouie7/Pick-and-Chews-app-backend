class RestaurantsController < ApplicationController
    def index
        restaurants = Restaurant.all
        render json: restaurants
    end

    def create
        @restaurant = Restaurant.create(restaurant_params)
        render json: @restaurant
    end

    def show
        restaurant = Restaurant.find_by(params[:id])
        render json: @restaurant
    end

    private

    def restaurant_params
        params.require(:restaurant).permit(:name)
    end

end
