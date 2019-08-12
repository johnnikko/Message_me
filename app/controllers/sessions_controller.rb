class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(username: params[:sessions][:username])
    if user && user.authenticate(params[:session][:password])
      #valid
      session[:user_id] = user.id
      flash.now[:success] = "You have succesfully logged in"
      redirect_to root_path
    else
      #not valid
      flash.now[:error] = "There was something wrong with your login information"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash.now[:success] = "You have succesfully logged in"
    redirect_to login_path
  end

end