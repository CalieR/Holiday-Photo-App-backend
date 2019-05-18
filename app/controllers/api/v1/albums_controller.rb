class Api::V1::AlbumsController < ApplicationController

    def index 
        albums = Album.all 
        render json: albums
    end

    def create 
        album = Album.create(name: params[:name])
        # getting nil token error at get_current_user:
        albumUser = AlbumUser.create(album: album, user: get_current_user, admin: true)
        render json: album 
        # need to render album user so can refresh state with it ?
    end

  


end
