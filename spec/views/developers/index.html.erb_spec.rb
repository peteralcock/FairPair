require 'rails_helper'

RSpec.describe "developers/index", type: :view do
  before(:each) do
    assign(:developers, [
      Developer.create!(
        name: "Name",
        employee_id: 2,
        kudos: 3,
        current_sprint_id: 4,
        current_pairing_id: 5,
        job_title: "Job Title",
        is_on_pto: false,
        manager_id: 6,
        user_id: 7
      ),
      Developer.create!(
        name: "Name",
        employee_id: 2,
        kudos: 3,
        current_sprint_id: 4,
        current_pairing_id: 5,
        job_title: "Job Title",
        is_on_pto: false,
        manager_id: 6,
        user_id: 7
      )
    ])
  end

  it "renders a list of developers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Job Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
  end
end
