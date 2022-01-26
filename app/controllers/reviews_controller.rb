class ReviewsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create(review_params)
    redirect_to restaurant_path(@restaurant)
  end

  private
    def review_params 
      params.require(:review).permit(:content)
    end
  end