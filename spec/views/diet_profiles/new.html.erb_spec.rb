require 'rails_helper'

RSpec.describe "diet_profiles/new", type: :view do
  before(:each) do
    assign(:diet_profile, DietProfile.new(
      user_id: 1,
      developer_id: 1,
      restrictions: "MyText",
      favorites: "MyText",
      allergies: "MyText",
      likes: "MyText",
      dislikes: "MyText"
    ))
  end

  it "renders new diet_profile form" do
    render

    assert_select "form[action=?][method=?]", diet_profiles_path, "post" do

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
