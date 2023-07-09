require 'rails_helper'

RSpec.describe Developer, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:pairings) }
  it { should have_many(:sprints).through(:pairings) }
  it { should have_many(:vacations) }

  describe '#on_vacation?' do
    let(:developer) { create(:developer) }
    let(:sprint) { create(:sprint) }

    context 'when the developer has a vacation during the sprint' do
      before { developer.vacations.create(sprint: sprint) }

      it 'returns true' do
        expect(developer.on_vacation?(sprint)).to be true
      end
    end

    context 'when the developer does not have a vacation during the sprint' do
      it 'returns false' do
        expect(developer.on_vacation?(sprint)).to be false
      end
    end
  end
end