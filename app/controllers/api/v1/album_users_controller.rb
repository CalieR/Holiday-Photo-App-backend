class Api::V1::AlbumUsersController < ApplicationController


   def create 
    albumUser = AlbumUser.create(user: params[:user], album: params[:album])
    # pass in person chosen from the dropdown and the id of the album
    render json: albumUser
   end
    

end
