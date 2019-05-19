class Api::V1::PhotosController < ApplicationController

    def index 
        photos = Photo.all 
        render json: photos
    end

    def create 
        photo = Photo.create(user: get_current_user, image_url: params[:image_url], title: params[:title], description: params[:description])
        # how do i format/pass the image?
        album_photo = AlbumPhoto.create(photo: photo, album_id: 1)
        # album_id hardcoded for now, how do i get that passed in...
        render json: photo
    end
end
