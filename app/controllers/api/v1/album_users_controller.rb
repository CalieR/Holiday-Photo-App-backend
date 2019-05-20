class Api::V1::AlbumUsersController < ApplicationController


   def create 
    albumUser = AlbumUser.create(user_id: params[:user], album_id: params[:album])
    # pass in person chosen from the dropdown and the id of the album
    render json: albumUser
   end
    

end
