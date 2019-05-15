class Api::V1::AlbumsController < ApplicationController

    def index 
        albums = Album.all 
        render json: albums
    end
end
