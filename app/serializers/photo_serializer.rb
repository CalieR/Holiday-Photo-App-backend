class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :image_url, :title, :description
end
