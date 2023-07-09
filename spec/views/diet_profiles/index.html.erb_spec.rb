require 'rails_helper'

RSpec.describe "diet_profiles/index", type: :view do
  before(:each) do
    assign(:diet_profiles, [
      DietProfile.create!(
        user_id: 2,
        developer_id: 3,
        restrictions: "MyText",
        favorites: "MyText",
        allergies: "MyText",
        likes: "MyText",
        dislikes: "MyText"
      ),
      DietProfile.create!(
        user_id: 2,
        developer_id: 3,
        restrictions: "MyText",
        favorites: "MyText",
        allergies: "MyText",
        likes: "MyText",
        dislikes: "MyText"
      )
    ])
  end

  it "renders a list of diet_profiles" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
