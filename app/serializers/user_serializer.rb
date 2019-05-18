class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :albums, :photos



  def albums 
    object.albums
  end

  def photos 
     object.photos    
  end

  
  
end




