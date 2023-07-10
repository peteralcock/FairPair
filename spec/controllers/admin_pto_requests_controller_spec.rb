require 'rails_helper'
RSpec.describe Admin::PtoRequestsController, type: :controller do
  describe 'POST #create' do
    let(:admin) { create(:user, role: :admin) }
    let(:user) { create(:user) }

    before do
      sign_in admin
    end

    it 'creates a new PTO request for a user' do
      expect {
        post :create, params: { pto_request: { user_id: user.id, start_date: Date.today, end_date: Date.today + 1.week } }
      }.to change(PtoRequest, :count).by(1)
    end
  end
end
