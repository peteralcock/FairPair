class PairingRotationSchedulerJob
  include Sidekiq::Worker

  def perform(sprint_id, developer_ids, pto_request_ids)
    sprint = Sprint.find(sprint_id)
    developers = Developer.find(developer_ids)
    pto_requests = PtoRequest.find(pto_request_ids)

    scheduler = PairingRotationScheduler.new(sprint, developers, pto_requests)
    schedule = scheduler.generate

    # Save the schedule to the database
    schedule.each do |day|
      day[:pairs].each do |pair|
        Pairing.create!(sprint: sprint, developer1: pair[0], developer2: pair[1])
      end
    end
  end
end
