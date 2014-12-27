class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def g_to_o grams
    grams * 0.035274
  end

  def o_to_g ozs
    ozs / 0.035274
  end

end
