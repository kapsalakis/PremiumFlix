class MoviesController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :get_movies, only: [:index]
  before_action :set_movie, only: [:show]
  before_action :get_reviews, only: [:show]
  before_action :check_subscription

  def index

  end

  def show

  end

  private
    def set_movie
      @movie=Movie.find(params[:id])
    end

    def get_reviews
      @reviews=Review.where(movie_id: @movie.id)
    end

    def get_movies

      @movies=Movie.all

    end

    private

    def check_subscription
      if user_signed_in?
        if !current_user.subscribed
          redirect_to subscribers_path
        end
      end
    end
end
