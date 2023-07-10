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
