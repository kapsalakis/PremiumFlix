class ReviewsController < ApplicationController
  def new
    @review=Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.movie_id=1
    @review.user_id=1

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def review_params
    params.require(:review).permit(:comment)
  end

end
