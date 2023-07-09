require 'rails_helper'

RSpec.describe "pto_requests/show", type: :view do
  before(:each) do
    assign(:pto_request, PtoRequest.create!(
      developer: nil,
      status: "Status",
      manager_id: 2,
      note: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
