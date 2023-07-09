class Project < ApplicationRecord
  belongs_to :lead_developer, class_name: 'Developer'
  has_many :sprints
  has_many :developers, through: :sprints
  has_many :pairings, through: :sprints

  def generate_pair_rotation_schedule
    developers = self.developers.to_a
    sprints_count = self.sprints.count
    sprints_count.times do |i|
      sprint = self.sprints[i]
      developers.each_slice(2) do |pair|
        pair.each do |developers|
          Pairing.create!(sprint: sprint, developer1: developers.first, developer2: developers.second)
        end
      end
      developers.rotate!
    end
  end

end
