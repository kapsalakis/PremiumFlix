class MovieImagesController < ApplicationController
  before_action :set_movie_image, only: [:show, :edit, :update, :destroy]

  # GET /movie_images
  # GET /movie_images.json
  def index
    @movie_images = MovieImage.all
  end

  # GET /movie_images/1
  # GET /movie_images/1.json
  def show
  end

  # GET /movie_images/new
  def new
    @movie_image = MovieImage.new
  end

  # GET /movie_images/1/edit
  def edit
  end

  # POST /movie_images
  # POST /movie_images.json
  def create
    @movie_image = MovieImage.new(movie_image_params)

    respond_to do |format|
      if @movie_image.save
        format.html { redirect_to @movie_image, notice: 'Movie image was successfully created.' }
        format.json { render :show, status: :created, location: @movie_image }
      else
        format.html { render :new }
        format.json { render json: @movie_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_images/1
  # PATCH/PUT /movie_images/1.json
  def update
    respond_to do |format|
      if @movie_image.update(movie_image_params)
        format.html { redirect_to @movie_image, notice: 'Movie image was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_image }
      else
        format.html { render :edit }
        format.json { render json: @movie_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_images/1
  # DELETE /movie_images/1.json
  def destroy
    @movie_image.destroy
    respond_to do |format|
      format.html { redirect_to movie_images_url, notice: 'Movie image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_image
      @movie_image = MovieImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_image_params
      params.require(:movie_image).permit(:movie_id, :image)
    end
end
