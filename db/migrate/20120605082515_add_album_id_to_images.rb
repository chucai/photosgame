class AddAlbumIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :album_id, :integer
    
    Image.update_all(:album_id => 1)
  end
end
