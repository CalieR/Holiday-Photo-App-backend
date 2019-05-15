class CreateAlbumPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :album_photos do |t|
      t.references :photo, foreign_key: true
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
