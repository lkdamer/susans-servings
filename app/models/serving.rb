class Serving < ActiveRecord::Base
  has_many :portions
  has_many :meals, through: :portions
end
