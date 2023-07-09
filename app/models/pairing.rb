class Pairing < ApplicationRecord
  belongs_to :sprint
  belongs_to :developer
  has_one :project, through: :sprint
end