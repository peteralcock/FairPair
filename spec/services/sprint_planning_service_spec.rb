# RSpec.describe SprintPlanningService, type: :service do
#   let(:developers) { create_list(:developer, 4) } # Assuming you have a factory for Developer
#   let(:sprint) { create(:sprint) } # Assuming you have a factory for Project
#   subject(:service) { described_class.new(sprint) }
#
#   describe "#generate" do
#     it "creates a pairing rotation for each sprint" do
#       service.generate
#       expect(sprint.developers.count).to eq(4)
#     end
#
#     it "assigns each developer to pair with each other developer approximately equally" do
#       service.generate
#       pair_counts = Hash.new(0)
#
#
#         sprint.pairings.each do |pairing|
#           pair_counts[pairing.developers.sort] += 1
#         end
#
#       expect(pair_counts.values.uniq.length).to be <= 1 # All pairs should occur approximately the same number of times
#     end
#
#     it "does not pair developers who are on PTO" do
#       pto_developer = developers.first
#       pto_developer.pto_requests.create(start_date: sprint.start_date) # Assuming the Project has a start_date
#
#       service.generate
#       expect(sprint.pairings.flat_map(&:developers)).not_to include(pto_developer)
#     end
#
#     it "assigns at most one developer to work solo each sprint" do
#       service.generate
#
#       sprint.pairings.each do |pairing|
#         solo_developers = pairing.sprint.select { |pairing| pairing.developers.count == 1 }
#         expect(solo_developers.count).to be <= 1
#       end
#     end
#   end
# end
