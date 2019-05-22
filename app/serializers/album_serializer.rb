class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :photos, :users, :album_photos

  def photos 
    object.album_photos  
end


end

