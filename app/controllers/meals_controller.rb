class MealsController < ApplicationController
  def show
    @meal = Meal.find(params[:id])
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to @meal
    else
      flash[:notice] = "There was an internal error and the meal could not be saved."
      redirect_to root_path
    end
  end

  def show
    @meal = Meal.find(params[:id])
    @servings = Serving.all
  end

  private

  def meal_params
    params.require(:meal).permit(:date_eaten, :user_id)
  end

  def portion_params

  end

end
