require 'rails_helper'

RSpec.feature "SaveAndEditSchedule", type: :feature do
  scenario "lead developer saves and edits the schedule" do
    # Assuming a project and schedule have already been created
    visit project_schedule_path(project)

    click_button "Save Schedule"

    expect(page).to have_text("Schedule has been successfully saved.")

    click_link "Edit Schedule"

    fill_in "Pairings", with: "Alice and Charlie, Bob is working solo"

    click_button "Submit"

    expect(page).to have_text("Schedule has been successfully updated.")
  end
end
