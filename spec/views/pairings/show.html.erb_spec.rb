require 'rails_helper'

RSpec.describe "pairings/show", type: :view do
  before(:each) do
    assign(:pairing, Pairing.create!(
      developer1_id: 2,
      developer2_id: 3,
      manager_id: 4,
      user_id: 5,
      sprint_id: 6,
      kudos_id: 7
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
  end
end
