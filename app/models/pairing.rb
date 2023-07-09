class Pairing < ApplicationRecord
  belongs_to :sprint
  belongs_to :developer
end