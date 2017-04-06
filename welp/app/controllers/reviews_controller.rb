class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])

    if Review.find_by(user_id: current_user.id, restaurant_id: @restaurant.id) == nil
      @review = @restaurant.reviews.create(review_params)
      @review.update(user_id: current_user.id)
    end
      redirect_to restaurant_path(@restaurant)
    end

  private
  def review_params
    params.require(:review).permit(:rating)
  end
end
