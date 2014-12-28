class MealsController < ApplicationController
  def show
    @meal = Meal.find(params[:id])
  end

  def create
    @meal = Meal.new(meal_params, user_id: current_user)

  end

  private

  def meal_params
    params.require(:meal).permit(:date_eaten)
  end

  def portion_params
    params.require(:portions).permit(:)
  end

end
