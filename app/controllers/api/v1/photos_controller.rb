class Api::V1::PhotosController < ApplicationController

    require 'base64'

    def index 
        photos = Photo.all 
        render json: photos
    end

    def create 
        byebug
        photo = Photo.create(user: get_current_user, image_url: params[:image], title: params[:title], description: params[:description])
        album_photo = AlbumPhoto.create(photo: photo, album_id: 1)
        # album_id hardcoded for now, need to pass that in later
        render json: photo
    end
end


# Starter code for moving Cloudinary call to backend:
# Send image (binary data) to cloundinary
# enc = Base64.encode64(image)
# cloudUrl = Cloudinary::Uploader.upload(enc, "wc5u6xxi")
# photo = Photo.create(user: get_current_user, image: cloudUrl, title: "Test", description: "Test upload")