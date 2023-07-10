require 'rails_helper'

RSpec.describe Admin::UsersController, type: :controller do
  describe 'POST #create' do
    let(:admin) { create(:user, role: :admin) }

    before do
      sign_in admin
    end

    it 'creates a new user' do
      expect {
        post :create, params: { user: { email: 'test@example.com', password: 'password', role: 'developer' } }
      }.to change(User, :count).by(1)
    end
  end
end
