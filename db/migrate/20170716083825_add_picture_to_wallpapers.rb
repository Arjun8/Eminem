class AddPictureToWallpapers < ActiveRecord::Migration[5.0]
  def change
    add_column :wallpapers, :picture, :string
  end
end
