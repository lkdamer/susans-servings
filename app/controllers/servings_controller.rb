class ServingsController < ApplicationController

  def index
    @servings = Serving.all
  end

end
