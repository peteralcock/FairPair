require 'rails_helper'

RSpec.describe "developers/new", type: :view do
  before(:each) do
    assign(:developer, Developer.new(
      name: "MyString",
      employee_id: 1,
      kudos: 1,
      current_sprint_id: 1,
      current_pairing_id: 1,
      job_title: "MyString",
      is_on_pto: false,
      manager_id: 1,
      user_id: 1
    ))
  end

  it "renders new developer form" do
    render

    assert_select "form[action=?][method=?]", developers_path, "post" do

      assert_select "input[name=?]", "developer[name]"

      assert_select "input[name=?]", "developer[employee_id]"

      assert_select "input[name=?]", "developer[kudos]"

      assert_select "input[name=?]", "developer[current_sprint_id]"

      assert_select "input[name=?]", "developer[current_pairing_id]"

      assert_select "input[name=?]", "developer[job_title]"

      assert_select "input[name=?]", "developer[is_on_pto]"

      assert_select "input[name=?]", "developer[manager_id]"

      assert_select "input[name=?]", "developer[user_id]"
    end
  end
end
