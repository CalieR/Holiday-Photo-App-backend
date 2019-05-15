class Album < ApplicationRecord
    has_many :album_users
    has_many :users, through: :album_users
    has_many :album_photos
    has_many :photos, through: :album_photos

end
