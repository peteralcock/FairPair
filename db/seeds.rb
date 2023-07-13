require 'ffaker'

# Create a random number of users
(rand(3..11)).times do
  user = User.create!(
      email: FFaker::Internet.email,
      password: 'password',
      password_confirmation: 'password'
  )

  puts user.email
  puts "Adding Projects..."
  # Each user creates a random number of projects
  (rand(1..5)).times do
    project = user.projects.create!(
        name: FFaker::HipsterIpsum.words(rand(1..4)).join(' '),
        priority: rand(1..100),
        number_of_sprints: rand(1..10)
    )
    puts project.name
    # Each project has a random number of developers
    developers = (rand(5..50)).times.map do
      Developer.create!(name: FFaker::Name.name)
    end

    puts "Test Developers:"
    puts developers.count

    # Assign developers to pairings for each sprint
    # DONE AUTOMATICALLY BY CALLBACK
    # project.sprints.each do |sprint|
    #   puts "Adding sprint #{sprint.id}"
    #   PairingScheduler.new(
    #       sprint,
    #       Developer.all).generate
    # end

    # A random number of developers create PTO requests
    developers.sample(rand(1..developers.size)).each do |developer|
      start_date = Date.today + rand(1..30).days
      end_date = start_date + rand(5..9).days

      pto_request = developer.pto_requests.create!(
          start_date: start_date,
          end_date: end_date
      )
      puts pto_request.start_date
      puts "PTO REQUESTED!"

      # A random number of PTO requests are approved by the user
      if [true, false].sample
        pto_request.update(approved_by: user.id)
      end
    end
  end
end
