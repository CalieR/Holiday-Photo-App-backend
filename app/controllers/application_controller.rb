class ApplicationController < ActionController::API

    def issue_token(payload)
        # byebug
        JWT.encode(payload, Rails.application.credentials.dig(:jwt_secret))
      end
      
      def decode_token(token)
        # byebug
        JWT.decode(token, Rails.application.credentials.dig(:jwt_secret))[0]
      end
    
      def get_token
        request.headers["Authorization"]
      end
    
      def get_current_user
        # byebug
        token = get_token
        decoded_token = decode_token(token)
        user = User.find(decoded_token["user_id"])
        user_hash = {
          username: user[:username],
          id: user[:id]
        }
      end
      
      def logged_in
        !!get_current_user
      end

end
