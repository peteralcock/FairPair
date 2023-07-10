class PtoRequest < ApplicationRecord
  validates_presence_of :start_date, :end_date
  belongs_to :developer
end
