class Meal < ActiveRecord::Base
  belongs_to :user
  has_many :portions
end
