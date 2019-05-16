class Api::V1::UsersController < ApplicationController

    def index
        users = User.all 
        render json: users
    end

 def show 
    user = User.find_by_id(params[:id])
    render json: user
 end
    
      def create
        user = User.new(name: params[:name], username: params[:username], password: params[:password])
        if user.save
          payload = {user_id: user.id}
          token = issue_token(payload)
          render json: { jwt: token }
        else
          render json: { error: "Signup not successful !"}
        end
      end
end
