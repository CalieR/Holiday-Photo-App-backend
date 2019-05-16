class Api::V1::AlbumsController < ApplicationController

    def index 
        albums = Album.all 
        render json: albums
    end

    # alter this to show a user's albums when they are logged in
    # def my_posts
    #     if logged_in
    #       render json: User.find(current_user[:id]).posts
    #     else 
    #       render json: {error: "Posts not available."}
    #     end
    #   end


end
