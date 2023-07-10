require 'rails_helper'
RSpec.describe ProjectsController, type: :controller do
  describe 'POST #create' do
    let(:user) { create(:user, role: :manager) }

    before do
      sign_in user
    end

    it 'creates a new project' do
      expect {
        post :create, params: { project: { name: 'New Project', number_of_sprints: 4 } }
      }.to change(Project, :count).by(1)
    end
  end

  describe 'POST #generate_schedule' do
    let(:project) { create(:project) }
    let(:user) { create(:user, role: :manager, projects: [project]) }

    before do
      sign_in user
    end

    it 'generates the pair programming rotation schedule for the project' do
      expect(project).to receive(:generate_pair_rotation_schedule)
      post :generate_schedule, params: { id: project.id }
    end
  end
end
