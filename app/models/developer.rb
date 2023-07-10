class Developer < ApplicationRecord
  validates_presence_of :name
  has_many :pairings, :foreign_key => 'developer1'
  has_many :pairings, :foreign_key => 'developer2'
  has_many :pto_requests
  belongs_to :sprint, optional: true
  belongs_to :user, optional: true
  has_many :projects
end
