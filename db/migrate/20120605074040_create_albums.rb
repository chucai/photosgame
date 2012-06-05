class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :desc
      t.integer :private, :default => 0
      t.string :token

      t.timestamps
    end
  end
end
