require 'rails_helper'

RSpec.feature "ViewSchedule", type: :feature do
  scenario "lead developer views the schedule" do
    # Assuming a project and schedule have already been created
    visit project_schedule_path(project)

    expect(page).to have_text("Pairing Rotation Schedule")
    expect(page).to have_text("Alice and Bob")
    expect(page).to have_text("Charlie is working solo")
  end
end
