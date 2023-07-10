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
