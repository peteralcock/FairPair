class Project < ApplicationRecord
  belongs_to :lead_developer, class_name: 'Developer'
  has_many :sprints
  has_many :developers, through: :sprints
  has_many :pairings, through: :sprints
end
