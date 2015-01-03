class Portion < ActiveRecord::Base
  belongs_to :meal
  belongs_to :serving
end
