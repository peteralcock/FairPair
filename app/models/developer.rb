class Developer < ApplicationRecord
  has_many :pairings
  has_many :sprints, through: :pairings
end
