require 'rails_helper'

RSpec.describe "sprints/edit", type: :view do
  let(:sprint) {
    Sprint.create!(
      number: 1,
      is_active: false,
      is_successful: false,
      kudos_id: 1,
      manager_id: 1,
      user_id: 1,
      description: "MyText",
      name: "MyString"
    )
  }

  before(:each) do
    assign(:sprint, sprint)
  end

  it "renders the edit sprint form" do
    render

    assert_select "form[action=?][method=?]", sprint_path(sprint), "post" do

      assert_select "input[name=?]", "sprint[number]"

      assert_select "input[name=?]", "sprint[is_active]"

      assert_select "input[name=?]", "sprint[is_successful]"

      assert_select "input[name=?]", "sprint[kudos_id]"

      assert_select "input[name=?]", "sprint[manager_id]"

      assert_select "input[name=?]", "sprint[user_id]"

      assert_select "textarea[name=?]", "sprint[description]"

      assert_select "input[name=?]", "sprint[name]"
    end
  end
end
