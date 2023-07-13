# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'rails_helper'
RSpec.describe Admin::ProjectsController, type: :controller do
  describe 'POST #create' do
    let(:admin) { create(:user) }


    it 'creates a new project' do
      expect {
        post :create, params: { project: { name: 'New Project', number_of_sprints: 4 } }
      }.to change(Project, :count).by(1)
    end
  end
end

require 'rails_helper'
RSpec.describe Admin::PtoRequestsController, type: :controller do
  describe 'POST #create' do
    let(:admin) { create(:user) }
    let(:user) { create(:user) }
    let(:developer) { create(:developer) }

    it 'creates a new PTO request for a user' do
      expect {
        post :create, params: { pto_request: { user_id: user.id, developer_id: developer.id, start_date: Date.today, end_date: Date.today + 1.week } }
      }.to change(PtoRequest, :count).by(1)
    end
  end
end
require 'rails_helper'

RSpec.describe DevelopersController, type: :controller do
  pending
end
require 'rails_helper'

RSpec.describe PairingsController, type: :controller do
  pending
end
require 'rails_helper'

RSpec.describe SprintsController, type: :controller do
  pending
end
# require 'rails_helper'
#
# RSpec.describe UsersController, type: :controller do
#   describe 'POST #create_pto_request' do
#     let(:user) { create(:user) }
#
#     before do
#       sign_in user
#     end
#
#     it 'creates a new PTO request for the current user' do
#       expect {
#         post :create_pto_request, params: { pto_request: { start_date: Date.today, end_date: Date.today + 1.week } }
#       }.to change(PtoRequest, :count).by(1)
#     end
#   end
# end
FactoryBot.define do
  factory :developer do
    name { FFaker::Name.name }
    sprint_id {1}
  end
end
FactoryBot.define do
  factory :pairing do
    manager_id { 1 }
    developer1 { create(:developer) }
    developer2 { create(:developer) }
    sprint { create(:sprint) }
  end
end
FactoryBot.define do
  factory :project do
    name { FFaker::HipsterIpsum.word }
    number_of_sprints { rand(1..10) }
    developers { create_list(:developer, 2) }
    lead_developer_id { Developer.all.sample }
    description { FFaker::HipsterIpsum.paragraph}
    status { ["Pending", "Active", "Completed", "Abandoned", "Canceled", "Inactive"].sample }
    user_id { 1 }
    manager_id { 1 }
    source_url { "https://github.com/peteralcock/fairpair" }
    start_date { "2023-07-08 20:51:23" }
    end_date { "2023-07-15 20:51:23" }
    priority { 1 }
  end

end
FactoryBot.define do
  factory :pto_request do
    status { nil}
    approved_at { [Time.now,nil].sample}
    manager_id { 1 }
    note { "May I please go to the Marilyn Manson concert instead?" }
    developer { create(:developer) }
    start_date { Date.today }
    end_date { Date.today + 1.week }
  end
end
FactoryBot.define do
  factory :sprint do
    number { rand(1000) }
    start_date { FFaker::Time.date }
    end_date { FFaker::Time.date + 7.days }
    manager_id { 1 }
    user_id { 1 }
    description { "Melt the cage using improvised heating element" }
    name { "Escape the laboratory!" }
  end
end
FactoryBot.define do
  factory :user do
    name { FFaker::Name.name }
    email { FFaker::Internet.email }
    password { FFaker::Internet.password }
  end

end
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
# require 'rails_helper'
#
# RSpec.feature "InputProjectDetails", type: :feature do
#   scenario "lead developer inputs project details" do
#     visit new_project_path
#
#     fill_in "Number of sprints", with: 4
#     fill_in "Names of developers", with: "Alice, Bob, Charlie"
#     fill_in "PTO requests", with: "Alice: 1-2, Bob: 3"
#
#     click_button "Submit"
#
#     expect(page).to have_text("Project details have been successfully submitted.")
#   end
# end
# require 'rails_helper'
#
# RSpec.feature "SaveAndEditSchedule", type: :feature do
#   scenario "lead developer saves and edits the schedule" do
#     # Assuming a project and schedule have already been created
#     visit project_schedule_path(project)
#
#     click_button "Save Schedule"
#
#     expect(page).to have_text("Schedule has been successfully saved.")
#
#     click_link "Edit Schedule"
#
#     fill_in "Pairings", with: "Alice and Charlie, Bob is working solo"
#
#     click_button "Submit"
#
#     expect(page).to have_text("Schedule has been successfully updated.")
#   end
# end
require 'rails_helper'
RSpec.describe "Sprint Planning", type: :feature do
  let(:sprint) { create(:sprint) } # Assuming you have a factory for Project

  before do
    # Assuming you have a service that generates the pairing rotation schedule
    SprintPlanningService.new(sprint).generate
  end

  #
  # scenario "User can view the pair rotation schedule" do
  #   pending
  # end

  scenario "Each developer pairs with every other developer an equal number of times" do
    visit sprints_path(sprint)

    pair_counts = Hash.new(0)

    sprint.pairings.each do |pairing|
      pair_counts[pairing.developers.sort] += 1
    end


    expect(pair_counts.values.uniq.length).to be <= 1
  end

  # scenario "User can view the requested vacation time for the developers" do
  #   pending
  # end

  scenario "At most 1 developer is soloing during any given sprint" do
    visit sprints_path(sprint)

    solo_developers = sprint.pairings.select { |pairing| pairing.developers.count == 1 }
    expect(solo_developers.count).to be <= 1
  end

end
# require 'rails_helper'
#
# RSpec.feature "ViewSchedule", type: :feature do
#   scenario "lead developer views the schedule" do
#     # Assuming a project and schedule have already been created
#     visit project_schedule_path(project)
#
#     expect(page).to have_text("Pairing Rotation Schedule")
#
#   end
# end
RSpec.describe Developer, type: :model do
  it "is valid with a name" do
    developer = Developer.new(name: 'Alice')
    expect(developer).to be_valid
  end

  it "is invalid without a name" do
    developer = Developer.new(name: nil)
    expect(developer).not_to be_valid
  end

end
require 'rails_helper'

RSpec.describe Pairing, type: :model do
  pending

end
# RSpec.describe Project, type: :model do
#   it "is valid with a name, number of sprints, and developers" do
#     developer1 = Developer.new(name: 'Alice')
#     developer2 = Developer.new(name: 'Bob')
#     project = Project.new(name: 'Project 1', number_of_sprints: 5, developers: [developer1, developer2])
#     expect(project).to be_valid
#   end
#
#   it "is invalid without a name" do
#     project = Project.new(name: nil)
#     expect(project).not_to be_valid
#   end
#
#   it "is invalid without a number of sprints" do
#     project = Project.new(number_of_sprints: nil)
#     expect(project).not_to be_valid
#   end
#
#   it "can have many developers" do
#     developer1 = Developer.new(name: 'Alice')
#     developer2 = Developer.new(name: 'Bob')
#     project = Project.new(name: 'Project 1', number_of_sprints: 5)
#     project.developers << [developer1, developer2]
#     expect(project.developers.count).to eq(2)
#   end
# end
require 'rails_helper'

RSpec.describe PtoRequest, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
# spec/models/sprint_spec.rb

require 'rails_helper'

RSpec.describe Sprint, type: :model do
  describe ".create_pairings" do
    let(:sprint) { create(:sprint) }
    let(:developers) { create_list(:developer, 6) }

    before do
      Sprint.create_pairings(developers, sprint.id)
    end

    it "creates the correct number of pairings" do
      expect(sprint.pairings.count).to eq(3)
    end

    it "pairs each developer with the correct partner" do
      developers.each do |developer|
        pairing = Pairing.find_by(developer1: developer) || Pairing.find_by(developer2: developer)
        expect(pairing).to be_present
      end
    end

    context "when there is an odd number of developers" do
      let(:developers) { create_list(:developer, 5) }

      it "creates a solo pairing for the developer who has been solo the least" do
        solo_pairing = Pairing.find_by(developer2: nil)
        expect(solo_pairing).to be_present
        expect(solo_pairing.developer1.pairings.where(developer2: nil).count).to be <= 1
      end
    end
  end
end
require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
require "rails_helper"

RSpec.describe DevelopersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/developers").to route_to("developers#index")
    end

    it "routes to #new" do
      expect(get: "/developers/new").to route_to("developers#new")
    end

    it "routes to #show" do
      expect(get: "/developers/1").to route_to("developers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/developers/1/edit").to route_to("developers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/developers").to route_to("developers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/developers/1").to route_to("developers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/developers/1").to route_to("developers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/developers/1").to route_to("developers#destroy", id: "1")
    end
  end
end
require "rails_helper"

RSpec.describe PairingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/pairings").to route_to("pairings#index")
    end

    it "routes to #new" do
      expect(get: "/pairings/new").to route_to("pairings#new")
    end

    it "routes to #show" do
      expect(get: "/pairings/1").to route_to("pairings#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/pairings/1/edit").to route_to("pairings#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/pairings").to route_to("pairings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/pairings/1").to route_to("pairings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/pairings/1").to route_to("pairings#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/pairings/1").to route_to("pairings#destroy", id: "1")
    end
  end
end
require "rails_helper"

RSpec.describe ProjectsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/projects").to route_to("projects#index")
    end

    it "routes to #new" do
      expect(get: "/projects/new").to route_to("projects#new")
    end

    it "routes to #show" do
      expect(get: "/projects/1").to route_to("projects#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/projects/1/edit").to route_to("projects#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/projects").to route_to("projects#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/projects/1").to route_to("projects#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/projects/1").to route_to("projects#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/projects/1").to route_to("projects#destroy", id: "1")
    end
  end
end
require "rails_helper"

RSpec.describe PtoRequestsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/pto_requests").to route_to("pto_requests#index")
    end

    it "routes to #new" do
      expect(get: "/pto_requests/new").to route_to("pto_requests#new")
    end

    it "routes to #show" do
      expect(get: "/pto_requests/1").to route_to("pto_requests#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/pto_requests/1/edit").to route_to("pto_requests#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/pto_requests").to route_to("pto_requests#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/pto_requests/1").to route_to("pto_requests#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/pto_requests/1").to route_to("pto_requests#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/pto_requests/1").to route_to("pto_requests#destroy", id: "1")
    end
  end
end
require "rails_helper"

RSpec.describe SprintsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/sprints").to route_to("sprints#index")
    end

    it "routes to #new" do
      expect(get: "/sprints/new").to route_to("sprints#new")
    end

    it "routes to #show" do
      expect(get: "/sprints/1").to route_to("sprints#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/sprints/1/edit").to route_to("sprints#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/sprints").to route_to("sprints#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/sprints/1").to route_to("sprints#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/sprints/1").to route_to("sprints#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/sprints/1").to route_to("sprints#destroy", id: "1")
    end
  end
end
require 'rails_helper'

RSpec.describe PairingRotationScheduler, type: :service do
  let(:sprint) { create(:sprint, number: 5) }
  let(:developers) { create_list(:developer, 3) }
  let(:pto_requests) { [create(:pto_request, developer: developers.first, start_date: 1, end_date: 2)] }

  subject(:scheduler) { described_class.new(sprint, developers, pto_requests) }

  describe '#generate' do
    it 'generates a pairing rotation schedule' do
      schedule = scheduler.generate

      expect(schedule.size).to eq(sprint.number)
      expect(schedule.first[:pairs].size).to eq((developers.size / 2.0).ceil)
      expect(schedule.first[:pto]).to include(developers.first)
    end

    it 'rotates the developers for each day of the sprint' do
      schedule = scheduler.generate

      expect(schedule[0][:pairs]).not_to eq(schedule[1][:pairs])
    end

    it 'handles PTO requests' do
      schedule = scheduler.generate

      expect(schedule[1][:pto]).to include(developers.first)
    end
  end
end
RSpec.describe SprintPlanningService, type: :service do
  let(:developers) { create_list(:developer, 4) } # Assuming you have a factory for Developer
  let(:sprint) { create(:sprint, developers: developers) } # Assuming you have a factory for Project
  subject(:service) { described_class.new(sprint) }

  describe "#generate" do
    it "creates a pairing rotation for each sprint" do
      service.generate
      expect(sprint.developers.count).to eq(4)
    end

    it "assigns each developer to pair with each other developer approximately equally" do
      service.generate
      pair_counts = Hash.new(0)


      sprint.pairings.each do |pairing|
        pair_counts[pairing.developers.sort] += 1
      end

      expect(pair_counts.values.uniq.length).to be <= 1 # All pairs should occur approximately the same number of times
    end

    it "does not pair developers who are on PTO" do
      pto_developer = developers.first
      pto_developer.pto_requests.create(start_date: sprint.start_date) # Assuming the Project has a start_date

      service.generate
      expect(sprint.pairings.flat_map(&:developers)).not_to include(pto_developer)
    end

    it "assigns at most one developer to work solo each sprint" do
      service.generate

      sprint.pairings.each do |pairing|
        solo_developers = pairing.sprint.select { |pairing| pairing.developers.count == 1 }
        expect(solo_developers.count).to be <= 1
      end
    end
  end
end
