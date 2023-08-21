class Location < ApplicationRecord
  belongs_to :poisson
  belongs_to :user
end
