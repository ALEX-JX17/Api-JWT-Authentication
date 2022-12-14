class AuthenticationController < ApplicationController

    skip_before_action :authentication_request, only: [:login]

    #POST /auth/login
    def login
        @user = User.find_by_email(params[:email])
        if @user&.authenticate(params[:password]) #authenticate is a method from bcrypt Gem
            token  = jwt_encode(user_id: @user.id)
            render json: { token: token }, status: :ok
        else
            render json: { error: "Invalid email or password"}, status: :unauthorized
        end
    end

end
