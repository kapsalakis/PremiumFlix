class AddFieldsToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :movie_length, :string
    add_column :movies, :director, :string
    add_column :movies, :rating, :string
  end
end
