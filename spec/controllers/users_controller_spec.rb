# require 'rails_helper'
#
# RSpec.describe UsersController, type: :controller do
#   describe 'POST #create_pto_request' do
#     let(:user) { create(:user) }
#
#     before do
#       sign_in user
#     end
#
#     it 'creates a new PTO request for the current user' do
#       expect {
#         post :create_pto_request, params: { pto_request: { start_date: Date.today, end_date: Date.today + 1.week } }
#       }.to change(PtoRequest, :count).by(1)
#     end
#   end
# end
