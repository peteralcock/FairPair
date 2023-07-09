class Sprint < ApplicationRecord
  belongs_to :project, optional: true
  has_many :pairings
  has_many :developers, :through => :pairings

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
