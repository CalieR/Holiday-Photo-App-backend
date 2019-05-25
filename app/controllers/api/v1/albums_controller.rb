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
        # byebug
        if album.valid?
            albumUser = AlbumUser.create(album: album, user: get_current_user, admin: true)
            render json: album 
        else
            # byebug
            render json: {error: album.errors.full_messages}
        end
    end

    def invite
        # byebug 
        result = User.all - Album.find(params[:id]).users
        render json: result
    end
  


end
