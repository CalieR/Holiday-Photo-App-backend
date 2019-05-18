class Api::V1::AlbumsController < ApplicationController

    def index 
        albums = Album.all 
        render json: albums
    end

    def show 
        album = Album.find(params[:id])
        render json: album
    end
    

    def create 
        album = Album.create(name: params[:name])
        albumUser = AlbumUser.create(album: album, user: get_current_user, admin: true)
        render json: album 
    end

  


end
