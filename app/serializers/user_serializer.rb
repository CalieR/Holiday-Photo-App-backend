class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :albums, :photos, :album_ids, :photo_ids

  def albums 
    object.albums
  end

  def photos 
     object.photos    
  end

  
  
end



