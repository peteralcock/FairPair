require 'rails_helper'

RSpec.describe Sprint, type: :model do
  it { should validate_presence_of(:number) }
  it { should have_many(:pairings) }
  it { should have_many(:developers).through(:pairings) }

  describe '#generate_pairings' do
    let(:sprint) { create(:sprint) }
    let(:developers) { create_list(:developer, 3) }

    it 'generates pairings for the sprint' do
      sprint.generate_pairings(developers)
      expect(sprint.pairings.count).to eq(3)
    end
  end
end