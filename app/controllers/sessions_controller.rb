class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(username: params[:username])
        return head(:forbidden) unless @user.authenticate(params[:password])
        session[:user_id] = @user.id
    end

    def destroy
        # session.delete :name
        session.destroy
        redirect_to '/'
    end

end