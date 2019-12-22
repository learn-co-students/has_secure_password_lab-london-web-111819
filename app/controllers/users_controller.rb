class UsersController < ApplicationController

    def new
    end

    def create
        byebug
        User.create(user_params)
        
    end

    private
 
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
