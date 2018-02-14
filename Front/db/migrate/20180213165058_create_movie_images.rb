class CreateMovieImages < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_images do |t|
      t.string :movie_id, foreign_key: true

      t.timestamps
    end
  end
end
