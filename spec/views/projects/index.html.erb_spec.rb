require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        lead_developer_id: 2,
        name: "Name",
        description: "MyText",
        status: "Status",
        user_id: 3,
        manager_id: 4,
        source_url: "Source Url",
        is_complete: false,
        priority: 5
      ),
      Project.create!(
        lead_developer_id: 2,
        name: "Name",
        description: "MyText",
        status: "Status",
        user_id: 3,
        manager_id: 4,
        source_url: "Source Url",
        is_complete: false,
        priority: 5
      )
    ])
  end

  it "renders a list of projects" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Status".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Source Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
  end
end
