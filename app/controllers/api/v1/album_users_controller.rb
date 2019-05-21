class Api::V1::AlbumUsersController < ApplicationController


   def create 
   byebug
    albumUser = AlbumUser.create(user_id: params[:user], album_id: params[:album], admin: params[:admin])
    # refactor to pass in person chosen from the dropdown and the id of the album
    render json: albumUser
   end
    

end
