require 'test_helper'

class MovieImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_image = movie_images(:one)
  end

  test "should get index" do
    get movie_images_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_image_url
    assert_response :success
  end

  test "should create movie_image" do
    assert_difference('MovieImage.count') do
      post movie_images_url, params: { movie_image: { movie_id: @movie_image.movie_id } }
    end

    assert_redirected_to movie_image_url(MovieImage.last)
  end

  test "should show movie_image" do
    get movie_image_url(@movie_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_image_url(@movie_image)
    assert_response :success
  end

  test "should update movie_image" do
    patch movie_image_url(@movie_image), params: { movie_image: { movie_id: @movie_image.movie_id } }
    assert_redirected_to movie_image_url(@movie_image)
  end

  test "should destroy movie_image" do
    assert_difference('MovieImage.count', -1) do
      delete movie_image_url(@movie_image)
    end

    assert_redirected_to movie_images_url
  end
end
