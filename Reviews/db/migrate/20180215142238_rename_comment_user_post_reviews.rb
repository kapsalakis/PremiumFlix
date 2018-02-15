class RenameCommentUserPostReviews < ActiveRecord::Migration[5.0]
  def change
    rename_column :reviews, :comment, :user_post
  end
end
