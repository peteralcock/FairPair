require 'rails_helper'

RSpec.describe PairingScheduler, type: :service do
  let(:sprint) { create(:sprint) }
  let(:developers) { create_list(:developer, 4) }

  subject(:service) { described_class.new(sprint, developers) }

  describe '#generate' do
    it 'creates pairings for each developer' do
      expect { service.generate }.to change { Pairing.count }.by(developers.count / 2)
    end

    it 'creates pairings with unique partners' do
      service.generate
      pairings = Pairing.where(sprint_id: sprint.id)
      partners = pairings.map { |pairing| [pairing.developer1_id, pairing.developer2_id].sort }

      expect(partners.uniq.count).to eq pairings.count
    end

    context 'when there is an odd number of developers' do
      let(:developers) { create_list(:developer, 5) }

      it 'creates a single-developer pairing' do
        service.generate
        pairings = Pairing.where(sprint_id: sprint.id)

        expect(pairings.where(developer2_id: nil).count).to eq 1
      end
    end
  end
end