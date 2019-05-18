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
        # byebug
      end
    
      # current_user is reserved in rails, was getting nil token error
      # get the user id from the token
      def get_current_user
        token = get_token
        
        decoded_token = decode_token(token)
        user = User.find(decoded_token["user_id"])
      end
      
      def logged_in
        !!get_current_user
      end

end
