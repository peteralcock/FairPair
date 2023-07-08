require 'rails_helper'

RSpec.describe "sprints/index", type: :view do
  before(:each) do
    assign(:sprints, [
      Sprint.create!(
        number: 2,
        is_active: false,
        is_successful: false,
        kudos_id: 3,
        manager_id: 4,
        user_id: 5,
        description: "MyText",
        name: "Name"
      ),
      Sprint.create!(
        number: 2,
        is_active: false,
        is_successful: false,
        kudos_id: 3,
        manager_id: 4,
        user_id: 5,
        description: "MyText",
        name: "Name"
      )
    ])
  end

  it "renders a list of sprints" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
