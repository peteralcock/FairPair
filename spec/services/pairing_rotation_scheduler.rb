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
