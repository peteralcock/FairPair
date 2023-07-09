require 'rails_helper'

RSpec.describe "pto_requests/index", type: :view do
  before(:each) do
    assign(:pto_requests, [
      PtoRequest.create!(
        developer: nil,
        status: "Status",
        manager_id: 2,
        note: "MyText"
      ),
      PtoRequest.create!(
        developer: nil,
        status: "Status",
        manager_id: 2,
        note: "MyText"
      )
    ])
  end

  it "renders a list of pto_requests" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Status".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
