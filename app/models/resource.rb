class Resource < ApplicationRecord
  has_many :turn_resources
  has_many :turns, through: :turn_resources
end
