class Turn < ApplicationRecord
  belongs_to :user
  has_many :turn_resources
  has_many :resources, through: :turn_resources
end
