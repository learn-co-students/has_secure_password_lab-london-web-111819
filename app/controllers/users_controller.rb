class UsersController < ApplicationController 
    def new

    end 

    def create 
        @user = User.create(post_params)
        return redirect_to controller: 'users', action: 'new' unless @user.save
        session[:user_id] = @user.id
        redirect_to controller: 'welcome', action: 'home'
    end  

    private

    def post_params
        params.require(:user).permit(:name, :password, :password_confirmaction)
    end 
end 