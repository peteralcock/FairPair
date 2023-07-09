require 'rails_helper'

RSpec.describe "pto_requests/new", type: :view do
  before(:each) do
    assign(:pto_request, PtoRequest.new(
      developer: nil,
      status: "MyString",
      manager_id: 1,
      note: "MyText"
    ))
  end

  it "renders new pto_request form" do
    render

    assert_select "form[action=?][method=?]", pto_requests_path, "post" do

      assert_select "input[name=?]", "pto_request[developer_id]"

      assert_select "input[name=?]", "pto_request[status]"

      assert_select "input[name=?]", "pto_request[manager_id]"

      assert_select "textarea[name=?]", "pto_request[note]"
    end
  end
end
