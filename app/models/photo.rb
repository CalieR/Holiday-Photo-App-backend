class Photo < ApplicationRecord
  belongs_to :user

  has_many :album_photos
  has_many :albums, through: :album_photos

  validates :title, :description, presence: :true 
end
