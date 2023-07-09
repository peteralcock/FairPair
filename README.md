# FairPair

## Developer Pairing Rotation Scheduler

FairPair is a Ruby on Rails application designed to automate the process of creating and managing a developer pairing rotation schedule for software engineering projects. The application allows the lead developer to input project details, including the number of sprints, developer names, and any scheduled paid time off (PTO). The application then generates a pairing rotation schedule, aiming to ensure each developer pairs with every other developer an equal number of times, or as close to equal as possible. The lead developer can view, save, and edit the schedule.

## Features

### User Interface for Inputting Project Details
The application provides a user-friendly interface for the lead developer to input the following project details:
- Number of sprints
- Names of all developers
- Any PTO requested by the developers

### Pairing Rotation Schedule Generation
The application generates a pairing rotation schedule based on the inputted project details. The schedule aims to ensure each developer pairs with every other developer an equal number of times, or as close to equal as possible.

### Schedule Viewing
The lead developer can view the generated schedule. The schedule clearly shows who is pairing with whom during each sprint and also shows who is on vacation and who is working solo during each sprint.

### Schedule Saving and Editing
The lead developer can save the generated schedule. The saved schedule is persistent, i.e., it is available for viewing and editing at a later time. The lead developer can also edit the saved schedule.

## Setup

### Prerequisites
- Ruby 3.1.2
- Rails 7.0.4
- PostgreSQL 13.0

### Installation
1. Clone the repository: `git clone https://github.com/username/fairpair.git`
2. Navigate to the project directory: `cd fairpair`
3. Install the dependencies: `bundle install`
4. Set up the database: `rails db:create db:migrate`
5. Start the server: `rails server`

## Usage

1. Open your web browser and navigate to `localhost:3000`.
2. Register or log in as the lead developer.
3. From the dashboard, click on "New Project" to input the project details.
4. Input the number of sprints, the names of the developers, and any PTO.
5. Click on "Generate Schedule" to generate the pairing rotation schedule.
6. View the generated schedule. The schedule shows who is pairing with whom during each sprint and who is on vacation or working solo.
7. Save the schedule for later viewing and editing.

## Testing

FairPair includes RSpec tests to ensure the functionality is working as expected. To run the tests, use the command `bundle exec rspec`.

## Security

FairPair is secure, ensuring that only the lead developer can view, save, and edit the schedule.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

FairPair is released under the [MIT License](https://opensource.org/licenses/MIT).
