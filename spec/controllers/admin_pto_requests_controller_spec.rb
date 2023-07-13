# require 'rails_helper'
# RSpec.describe Admin::PtoRequestsController, type: :controller do
#   describe 'POST #create' do
#     let(:admin) { create(:user) }
#     let(:user) { create(:user) }
#     let(:developer) { create(:developer) }
#
#     it 'creates a new PTO request for a user' do
#       expect {
#         post :create, params: { pto_request: { user_id: user.id, developer_id: developer.id, start_date: Date.today, end_date: Date.today + 1.week } }
#       }.to change(PtoRequest, :count).by(1)
#     end
#   end
# end
