class Sprint < ApplicationRecord
  belongs_to :project, optional: true
  has_many :pairings
  has_many :developers
  has_many :pto_requests, :through => :developers
  has_one :lead_developer, :class_name => "Developer", :primary_key => 'lead_developer_id', :foreign_key => 'id'
  def generate_pair_rotation_schedule
    developers = self.developers
      developers.each_slice(2) do |developers|
          Pairing.create!(sprint: self, developer1: developers.first, developer2: developers.second)
      end
      developers.rotate!
    end


  def generate_pairings(developers)
    developers.combination(2).each do |developer1, developer2|
      Pairing.create(developer1: developer1, developer2: developer2, sprint: self)
    end
  end

end
