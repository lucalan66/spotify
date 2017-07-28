class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :image_url
      t.date :released_at
      t.belongs_to :artist, index: true

      t.timestamps
    end
  end
end
