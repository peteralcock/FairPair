require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    assign(:project, Project.create!(
      lead_developer_id: 2,
      name: "Name",
      description: "MyText",
      status: "Status",
      user_id: 3,
      manager_id: 4,
      source_url: "Source Url",
      is_complete: false,
      priority: 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Source Url/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/5/)
  end
end
