class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :photos
  has_many :albums 
  
end




