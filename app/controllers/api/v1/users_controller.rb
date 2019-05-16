class Api::V1::UsersController < ApplicationController

    def index
        users = User.all 
        render json: users
    end


#  def show 
#     user = User.find_by_id(params[:id])
#     render json: user
#  end

    
    def create
    user = User.new(user_params)
        if user.save
            payload = {user_id: user.id}
            token = issue_token(payload)
            render json: { jwt: token }
        else
            render json: { error: "Signup not successful !"}
        end
    end

    def show 
        user = User.find_by_id(params[:id])
        if user
          render json: user
            # go to user show page
        else 
          render json: "user doesn't exist, please sign up"
            # go to sign up page
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :password)
    end

end
