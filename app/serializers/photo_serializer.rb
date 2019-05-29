class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :image_url, :title, :description, :user

  def user
    {
      id: object.user.id,
      username: object.user.username
    }
  end
end
