class Developer < ApplicationRecord
  validates_presence_of :name
  # Sprint. Singular. ONE thing at a time...
  belongs_to :sprint, :class_name => "Sprint", :optional => true
  # has_many :pairings, :through => :sprint
  has_many :pto_requests
  #has_many :pairings, class_name: 'Pairing', foreign_key: 'developer1_id' || 'developer2_id'
  # has_many :pairings, -> { where(developer1_id: 'id') ||  where(developer2_id: 'id' )}, class_name: 'Pairing'
  has_many :pto_requests
  has_many :pairings_as_dev1, class_name: 'Pairing', foreign_key: 'developer1_id'
  has_many :pairings_as_dev2, class_name: 'Pairing', foreign_key: 'developer2_id'

  def pairings
    Pairing.where("developer1_id = ? OR developer2_id = ?", id, id)
  end
end
