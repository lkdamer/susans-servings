class SessionsController < ApplicationController

  def destroy
    sessions[:user_id] = nil
    redirect_to root_path
  end

  def create
    raise
    sessions[:user_id] = params[:id]
  end
end
