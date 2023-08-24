class Poisson < ApplicationRecord
  belongs_to :user
  has_many :locations
end
