class Project < ApplicationRecord
  belongs_to :lead_developer, class_name: 'Developer', optional: true
  has_many :sprints
  has_many :developers, through: :sprints
  has_many :pairings, through: :sprints

  def generate_pair_rotation_schedules
    developers = self.developers
    self.sprints.count.times do |i|
      sprint = self.sprints[i]
      developers.each_slice(2) do |pair|
        pair.each do |developers|
          Pairing.create!(sprint_id: sprint.id, developer1_id: developers.first.id, developer2_id: developers.second.id)
        end
      end
      developers.rotate!
    end
  end

end
