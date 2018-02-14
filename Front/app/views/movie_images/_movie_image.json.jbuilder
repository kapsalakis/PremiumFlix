json.extract! movie_image, :id, :movie_id, :created_at, :updated_at
json.url movie_image_url(movie_image, format: :json)
