class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true 

    has_many :photos 
    has_many :album_users 
    has_many :albums, through: :album_users
end
