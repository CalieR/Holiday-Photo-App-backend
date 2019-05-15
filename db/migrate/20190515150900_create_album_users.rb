class CreateAlbumUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :album_users do |t|
      t.references :user, foreign_key: true
      t.references :album, foreign_key: true
      t.boolean :admin

      t.timestamps
    end
  end
end
