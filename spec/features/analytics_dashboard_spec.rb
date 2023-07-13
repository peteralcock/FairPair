# RSpec.feature "AnalyticsDashboard", type: :feature do
#
#   let(:developer1) { create(:developer) }
#   let(:developer2) { create(:developer) }
#   let(:developer3) { create(:developer) }
#   let(:project1) { create(:project, sprints: 5, developers: [developer1, developer2]) }
#   let(:project2) { create(:project, sprints: 7, developers: [developer1, developer3]) }
#
#   before do
#     # Assuming pairings have already been created for the projects
#     create_pairings_for_project(project1)
#     create_pairings_for_project(project2)
#   end
#
#   scenario "user views the percentage of developers each user has been paired with" do
#
#     visit analytics_dashboard_path
#
#     within("#pairing_percentage_chart") do
#       expect(page).to have_css(".chartkick", visible: :all)
#       expect(page).to have_text("#{developer1.name}: 100%")
#       expect(page).to have_text("#{developer2.name}: 50%")
#       expect(page).to have_text("#{developer3.name}: 50%")
#     end
#   end
#
#   scenario "user views the average number of sprints per completed project" do
#     visit analytics_dashboard_path
#
#     within("#average_sprints_chart") do
#       expect(page).to have_css(".chartkick", visible: :all)
#       expect(page).to have_text("Average: 6")
#     end
#   end
#
#   def create_pairings_for_project(project)
#     # Add your logic for creating pairings here
#   end
# end
