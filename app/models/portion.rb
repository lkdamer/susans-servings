class Portion < ActiveRecord::Base
  belongs_to :meal
  belongs_to :serving

  def calories
    self.serving.calories * self.grams / self.serving.grams
  end
end
