class Sprint < ApplicationRecord
  belongs_to :project
  has_many :pairings
  has_many :developers, through: :pairings

  def generate_pairings(developers)
    developers.combination(2).each do |developer1, developer2|
      pairings.create(developer1: developer1, developer2: developer2)
    end
  end

end
