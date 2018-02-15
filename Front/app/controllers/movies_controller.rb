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
      begin
        @reviews=Review.all
      rescue ActiveResource::ResourceNotFound, ActiveResource::ConnectionError, StandardError
        @reviews_error="Reviews service is down!"
      rescue ActiveResource::ResourceConflict, ActiveResource::ResourceInvalid
        @reviews_error="Server error!"
      end
    end

    def get_movies
      begin
        @movies=Movie.all
      rescue ActiveResource::ResourceNotFound, ActiveResource::ConnectionError, StandardError
        @movies_error="Movies service is down!"
      rescue ActiveResource::ResourceConflict, ActiveResource::ResourceInvalid
        @movies_error="Server error!"
      end
    end

    def check_subscription
      if user_signed_in?
        if !current_user.subscribed
          redirect_to subscribers_path
        end
      end
    end
end
