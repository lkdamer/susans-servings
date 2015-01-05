class Portion < ActiveRecord::Base
  belongs_to :meal
  belongs_to :serving

  def calories
    self.serving.calories * self.grams / self.serving.grams
  end

  def to_oz
    (self.grams * 0.035274).to_i
  end
end
