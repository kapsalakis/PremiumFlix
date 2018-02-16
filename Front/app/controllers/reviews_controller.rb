class ReviewsController < ApplicationController
  def new
    @review=Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id=current_user.id

    respond_to do |format|
      if @review.save
        format.html { redirect_to movie_path(params[:movie_id]), notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: movie_path(params[:movie_id]) }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def review_params
    params.require(:review).permit(:rating, :user_post, :movie_id)
  end

end
