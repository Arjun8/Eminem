class CreateWallpapers < ActiveRecord::Migration[5.0]
  def change
    create_table :wallpapers do |t|
    	t.string :name
    	t.text :summary
    	t.text :description
    	t.timestamps
    end
  end
end
