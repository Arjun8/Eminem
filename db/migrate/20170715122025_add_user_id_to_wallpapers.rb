class AddUserIdToWallpapers < ActiveRecord::Migration[5.0]
  def change
  	add_column :wallpapers, :user_id, :integer
  end
end
