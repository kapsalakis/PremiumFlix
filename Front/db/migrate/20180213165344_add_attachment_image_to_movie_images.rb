class AddAttachmentImageToMovieImages < ActiveRecord::Migration
  def self.up
    change_table :movie_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :movie_images, :image
  end
end
