class ReviewsController < ApplicationController
  before_filter :load_camp

  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = @camp.reviews.build(review_params)
    @review.user = current_user

    if @review.save
      redirect_to camp_path(@camp), notice: 'Review created successfully'
    else
      render 'products/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private
  def review_params
    params.require(:review).permit(:comment, :camp_id)
  end

  def load_camp
    @camp = Camp.find(params[:camp_id])
  end
end
