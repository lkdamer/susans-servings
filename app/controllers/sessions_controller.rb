class SessionsController < ApplicationController

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  def create
    @user = User.find_by('name = ? AND password = ?', params[:name], params[:password])
    if @user
      session[:user_id] = @user.id
    else
      flash[:notice] = "Incorrect or non-existant user name or password."
    end
    redirect_to root_path
  end
end
