require 'rails_helper'

RSpec.describe "pairings/index", type: :view do
  before(:each) do
    assign(:pairings, [
      Pairing.create!(
        developer1_id: 2,
        developer2_id: 3,
        manager_id: 4,
        user_id: 5,
        sprint_id: 6,
        kudos_id: 7
      ),
      Pairing.create!(
        developer1_id: 2,
        developer2_id: 3,
        manager_id: 4,
        user_id: 5,
        sprint_id: 6,
        kudos_id: 7
      )
    ])
  end

  it "renders a list of pairings" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
  end
end
