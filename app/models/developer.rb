class Developer < ApplicationRecord
  validates_presence_of :name
  belongs_to :sprint, :class_name => "Sprint", :optional => true
  has_many :pairings_as_developer1, class_name: 'Pairing', foreign_key: 'developer1_id'
  has_many :pairings_as_developer2, class_name: 'Pairing', foreign_key: 'developer2_id'
  has_many :pto_requests
  has_many :pairings, :through => :sprint

end

