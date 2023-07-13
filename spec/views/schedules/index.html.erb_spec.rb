require 'rails_helper'

RSpec.describe "schedules/index", type: :view do
  before(:each) do
    assign(:schedules, [
      Schedule.create!(
        json_schedule: "",
        raw_text_schedule: "MyText",
        project_id: 2,
        sprint_id: 3,
        user_id: 4,
        manager_id: 5,
        is_approved: false,
        approved_at: 6
      ),
      Schedule.create!(
        json_schedule: "",
        raw_text_schedule: "MyText",
        project_id: 2,
        sprint_id: 3,
        user_id: 4,
        manager_id: 5,
        is_approved: false,
        approved_at: 6
      )
    ])
  end

end
