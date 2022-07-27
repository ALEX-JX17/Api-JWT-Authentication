class UserController < ApplicationController
    before_action :set_user, only: %i[ show, delete ]

    #GET /users
    def index
        @users = User.all
        render json: @users, status: :ok    
    end

    #GET /users/:id
    def show
        render json: @user, status: :ok
    end

    #POST /users
    def create
        @user = User.new(user_prams)
        if @user.save
            render json: @user, status: :created
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    #DELETE /users/:id
    def destroy
        @user.destroy
        head :no_content
    end

    private

    def user_prams
        params.requiere(:user).permit(:username, :email, :password)
    end
    def set_person
        @user = User.find(params[:id])
    end
end
