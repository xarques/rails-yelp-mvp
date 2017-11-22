class ReviewsController < ApplicationController
  before_action :set_review, only: [:show]
  def index
    @reviews = Review.all
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant = @review.restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show

  end

  private
  def set_review
    @review = params[:id]
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
