require 'rails_helper'
RSpec.describe Admin::ProjectsController, type: :controller do
  describe 'POST #create' do
    let(:admin) { create(:user, role: :admin) }

    before do
      sign_in admin
    end

    it 'creates a new project' do
      expect {
        post :create, params: { project: { name: 'New Project', number_of_sprints: 4 } }
      }.to change(Project, :count).by(1)
    end
  end
end

