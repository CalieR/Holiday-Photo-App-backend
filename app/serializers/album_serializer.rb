class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :users

  has_many :photos



end

