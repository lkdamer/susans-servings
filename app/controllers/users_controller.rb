class UsersController < ApplicationController

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password))
    if @user.save
      session[:current_user] = @user.id
      redirect_to @user
    else
      flash[:notice] = "There was an internal server error and this user could not be saved."
      redirect_to root_path
    end
  end

  def show
    @user = User.find(session[:current_user])
    unless @user.id == params[:id].to_i
      flash[:notice] = "You are not authorized to visit that user's page."
      redirect_to root_path
    end

  end

end
