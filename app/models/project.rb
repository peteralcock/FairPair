class Project < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :number_of_sprints
  belongs_to :user, optional: true
  belongs_to :lead_developer, class_name: 'Developer', optional: true
  has_many :sprints
  has_many :pairings, through: :sprints
  has_many :developers, through: :sprints
  has_many :pto_requests, :through => :developers
  after_create :generate_sprints

  def generate_sprints
    self.number_of_sprints.times do |x|
      Sprint.create(:project_id => self.id)
    end
  end


  def generate_pair_rotation_schedules
    developers = self.sprints.map(&:developers)
    self.sprints.count.times do |i|
      sprint = self.sprints[i]
      developers.each_slice(2) do |pair|
        pair.each do |developers|
          Pairing.create!(project_id: self.id, sprint_id: sprint.id, developer1_id: developers.first.id, developer2_id: developers.second.id)
        end
      end
      developers.rotate!
    end
  end

  def project_id
    self.id
  end

end
