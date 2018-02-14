class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.string :user_id
      t.string :movie_id

      t.timestamps
    end
  end
end
