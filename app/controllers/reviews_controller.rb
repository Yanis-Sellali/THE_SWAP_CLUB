class ReviewsController < ApplicationController
  def new
    @exchange = Exchange.find(params[:exchange_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.reviewer = current_user
    if @review.save
      redirect_to root_path, notice: "Merci pour ton avis !"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :exchange_id, :user_id)
  end
end
