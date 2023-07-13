require 'rails_helper'

RSpec.describe "schedules/new", type: :view do
  before(:each) do
    assign(:schedule, Schedule.new(
      json_schedule: "",
      raw_text_schedule: "MyText",
      project_id: 1,
      sprint_id: 1,
      user_id: 1,
      manager_id: 1,
      is_approved: false,
      approved_at: 1
    ))
  end

  it "renders new schedule form" do
    render

    assert_select "form[action=?][method=?]", schedules_path, "post" do

      assert_select "input[name=?]", "schedule[json_schedule]"

      assert_select "textarea[name=?]", "schedule[raw_text_schedule]"

      assert_select "input[name=?]", "schedule[project_id]"

      assert_select "input[name=?]", "schedule[sprint_id]"

      assert_select "input[name=?]", "schedule[user_id]"

      assert_select "input[name=?]", "schedule[manager_id]"

      assert_select "input[name=?]", "schedule[is_approved]"

      assert_select "input[name=?]", "schedule[approved_at]"
    end
  end
end
