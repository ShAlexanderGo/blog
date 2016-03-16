class SessionsController < ApplicationController
    def new
    end
    def create
      @login = params[:login]
      @user = User.where("upper(login) = upper(?)", @login).first
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to @user
      else
        flash[:notice] = "Wrong name or password lol"
        render :new
      end
    end
    def destroy
      session.delete(:user_id)
      redirect_to login_path
    end
end
