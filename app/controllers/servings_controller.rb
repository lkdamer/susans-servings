class ServingsController < ApplicationController

  def index
    @servings = Serving.all
  end

  def create
    @serving = Serving.new(serving_params)
    if @serving.save
      redirect_to @current_user
    else
      flash[:notice] = "The serving could not be saved.
                        Please try again at another time."
      redirect_to root_path
    end
  end

  private

  def serving_params
    z = params.require(:serving).permit(:name,
                                    :grams,
                                    :calories,
                                    :susan_approved,
                                    :susan_limit)
    if params[:units] == 'ounces'
       z[:grams] = o_to_g z[:grams].to_i
    end
    return z
  end

end
