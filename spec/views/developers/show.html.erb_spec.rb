require 'rails_helper'

RSpec.describe "developers/show", type: :view do
  before(:each) do
    assign(:developer, Developer.create!(
      name: "Name",
      employee_id: 2,
      kudos: 3,
      current_sprint_id: 4,
      current_pairing_id: 5,
      job_title: "Job Title",
      is_on_pto: false,
      manager_id: 6,
      user_id: 7
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Job Title/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
  end
end
