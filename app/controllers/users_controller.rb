class UsersController < ApplicationController

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password))
    if @user.save
      
      flash[:notice] = "Thank you for creating an account. Check your email to confirm your account and get started."
      redirect_to root_path
    else
      flash[:notice] = "There was an internal server error and this user could not be saved."
      redirect_to root_path
    end
  end

  def show
    @user = User.find(session[:current_user])
  end

end
