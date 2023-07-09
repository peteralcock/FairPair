class Developer < ApplicationRecord
  has_many :pairings
  has_many :sprints, through: :pairings
  has_many :projects, through: :sprints
end
