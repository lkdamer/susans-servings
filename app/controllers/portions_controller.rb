class PortionsController < ApplicationController

  def create
    @portion = Portion.new(portion_params)
    if @portion.save
      redirect_to @portion.meal
    else
      flash[:notice] = "The portion was unable to save"
      redirect_to root_path
    end
  end

  private

  def portion_params
    z = params.require(:portion).permit(:grams, :meal_id, :serving_id)
    if params[:units] == 'ounces'
      z[:grams] = o_to_g z[:grams].to_i
    end
    return z
  end
end
