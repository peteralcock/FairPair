class Sprint < ApplicationRecord
  has_many :pairings
  has_many :developers, through: :pairings
end
