class ReviewsController < ApplicationController
  before_filter :load_camp
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def show
  end

  def edit
  end

  def create
    @review = @camp.reviews.build(review_params)
    @review.user = current_user

    if @review.save
      redirect_to camp_path(@camp), notice: 'Review created successfully.'
    else
      render 'camps/show'
    end
  end

  def update
    if @review.update(review_params)
      redirect_to @camp, notice: 'Review was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @review.destroy
    redirect_to camps_url(@camp), notice: 'Review was successfully deleted.'
  end

  private
  def review_params
    params.require(:review).permit(:comment, :camp_id)
  end

  def load_camp
    @camp = Camp.find(params[:camp_id])
  end

  def set_review 
    @review = Review.find(params[:id])
  end
end
