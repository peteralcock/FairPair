class Pairing < ApplicationRecord
  belongs_to :sprint
  belongs_to :developer1, class_name: 'Developer', foreign_key: 'developer1_id'
  belongs_to :developer2, class_name: 'Developer', foreign_key: 'developer2_id', optional: true
end
