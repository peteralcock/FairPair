require 'rails_helper'

RSpec.describe "pto_requests/edit", type: :view do
  let(:pto_request) {
    PtoRequest.create!(
      developer: nil,
      status: "MyString",
      manager_id: 1,
      note: "MyText"
    )
  }

  before(:each) do
    assign(:pto_request, pto_request)
  end

  it "renders the edit pto_request form" do
    render

    assert_select "form[action=?][method=?]", pto_request_path(pto_request), "post" do

      assert_select "input[name=?]", "pto_request[developer_id]"

      assert_select "input[name=?]", "pto_request[status]"

      assert_select "input[name=?]", "pto_request[manager_id]"

      assert_select "textarea[name=?]", "pto_request[note]"
    end
  end
end
