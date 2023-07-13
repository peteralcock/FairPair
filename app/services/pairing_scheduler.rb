class PairingScheduler
  def initialize(sprint, developers)
    @sprint = sprint
    @developers = developers
    @schedule = []
  end

  def generate
    devs = @developers.dup.shuffle

    until devs.empty?
      dev1 = devs.pop
      dev2 = find_least_paired_partner(dev1, devs)

      if dev2
        devs.delete(dev2)
        Pairing.create!(developer1_id: dev1.id, developer2_id: dev2.id, sprint_id: @sprint.id)
      else
        Pairing.create!(developer1_id: dev1.id, developer2_id: nil, sprint_id: @sprint.id)
      end
    end
  end

  private

  def find_least_paired_partner(developer, developers)
    developers.min_by do |dev|
      Pairing.where("(developer1_id = ? AND developer2_id = ?) OR (developer1_id = ? AND developer2_id = ?)", developer.id, dev.id, dev.id, developer.id).count
    end
  end
end
