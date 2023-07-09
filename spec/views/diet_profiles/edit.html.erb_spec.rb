require 'rails_helper'

RSpec.describe "diet_profiles/edit", type: :view do
  let(:diet_profile) {
    DietProfile.create!(
      user_id: 1,
      developer_id: 1,
      restrictions: "MyText",
      favorites: "MyText",
      allergies: "MyText",
      likes: "MyText",
      dislikes: "MyText"
    )
  }

  before(:each) do
    assign(:diet_profile, diet_profile)
  end

  it "renders the edit diet_profile form" do
    render

    assert_select "form[action=?][method=?]", diet_profile_path(diet_profile), "post" do

      assert_select "input[name=?]", "diet_profile[user_id]"

      assert_select "input[name=?]", "diet_profile[developer_id]"

      assert_select "textarea[name=?]", "diet_profile[restrictions]"

      assert_select "textarea[name=?]", "diet_profile[favorites]"

      assert_select "textarea[name=?]", "diet_profile[allergies]"

      assert_select "textarea[name=?]", "diet_profile[likes]"

      assert_select "textarea[name=?]", "diet_profile[dislikes]"
    end
  end
end
