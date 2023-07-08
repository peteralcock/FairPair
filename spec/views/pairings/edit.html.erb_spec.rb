require 'rails_helper'

RSpec.describe "pairings/edit", type: :view do
  let(:pairing) {
    Pairing.create!(
      developer1_id: 1,
      developer2_id: 1,
      manager_id: 1,
      user_id: 1,
      sprint_id: 1,
      kudos_id: 1
    )
  }

  before(:each) do
    assign(:pairing, pairing)
  end

  it "renders the edit pairing form" do
    render

    assert_select "form[action=?][method=?]", pairing_path(pairing), "post" do

      assert_select "input[name=?]", "pairing[developer1_id]"

      assert_select "input[name=?]", "pairing[developer2_id]"

      assert_select "input[name=?]", "pairing[manager_id]"

      assert_select "input[name=?]", "pairing[user_id]"

      assert_select "input[name=?]", "pairing[sprint_id]"

      assert_select "input[name=?]", "pairing[kudos_id]"
    end
  end
end
