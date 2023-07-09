class Pairing < ApplicationRecord
  belongs_to :sprint
  has_one :project, through: :sprint
  belongs_to :developer1, class_name: 'Developer'
  belongs_to :developer2, class_name: 'Developer', optional: true
end