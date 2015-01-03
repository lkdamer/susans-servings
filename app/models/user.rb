class User < ActiveRecord::Base
  has_many :meals
  has_many :portions, through: :meals
end
