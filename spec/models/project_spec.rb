require 'rails_helper'

RSpec.describe Project, type: :model do
  describe '#generate_pair_rotation_schedule' do
    let(:project) { create(:project) }
    let(:developers) { create_list(:developer, 4, projects: [project]) }

    before do
      project.generate_pair_rotation_schedule
    end

    it 'assigns each developer to a pair for each sprint' do
      project.sprints.each do |sprint|
        expect(sprint.developers.count).to eq(2)
      end
    end

    it 'rotates the pairs for each sprint' do
      first_sprint_pairs = project.sprints.first.developers
      second_sprint_pairs = project.sprints.second.developers

      expect(first_sprint_pairs).not_to eq(second_sprint_pairs)
    end
  end
end
