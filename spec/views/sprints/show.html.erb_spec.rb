require 'rails_helper'

RSpec.describe "sprints/show", type: :view do
  before(:each) do
    assign(:sprint, Sprint.create!(
      number: 2,
      is_active: false,
      is_successful: false,
      kudos_id: 3,
      manager_id: 4,
      user_id: 5,
      description: "MyText",
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Name/)
  end
end
