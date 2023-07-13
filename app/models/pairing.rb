class Pairing < ApplicationRecord
  belongs_to :sprint
  has_one  :lead_developer, :through => :sprint
  belongs_to :developer1, class_name: 'Developer', foreign_key: 'developer1_id'
  belongs_to :developer2, class_name: 'Developer', foreign_key: 'developer2_id', optional: true
  has_many :developers, through: [:developer1,:developer2]
end
