require 'rails_helper'

RSpec.describe "diet_profiles/show", type: :view do
  before(:each) do
    assign(:diet_profile, DietProfile.create!(
      user_id: 2,
      developer_id: 3,
      restrictions: "MyText",
      favorites: "MyText",
      allergies: "MyText",
      likes: "MyText",
      dislikes: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
