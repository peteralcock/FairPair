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

## TO-DO

Integration with External Calendar Services: Integrate with services like Google Calendar or Outlook to automatically add pair programming sessions to developers' calendars.

Slack Integration: Send notifications to a Slack channel when the pair programming schedule is updated.

Dietary Profile for Each User: Allow users to create a dietary profile with common dietary restrictions. This information can be used to filter taco recipes in the Taco Tracker.

Wishlist for Taco Recipes: Allow users to save their favorite taco recipes to a wishlist for future reference.

Analytics Dashboard: Provide insights into pair programming sessions, such as the most and least common pairs, the number of sessions per developer, etc.

Gamification of Pair Programming: Add elements of gamification, such as points or badges, to encourage developers to participate in pair programming sessions.

Machine Learning for Pairing Schedule: Use machine learning algorithms to optimize the pair programming schedule based on past data.


Deployment

- Containerization: Docker can be used to containerize the application which ensures consistency across different deployment environments. This has been done for you already, along with docker-compose.yml file for managing services like the database. Kubernetes on EKS can be used to manage the Docker containers and handle load balancing, networking, and scaling.
- Managed Database: AWS RDS can be used for production-level Postgres database management.
- CI/CD: Continuous Integration and Continuous Deployment can be implemented using tools such as Jenkins or GitHub Actions. This ensures that the codebase is always in a deployable state and reduces the time and risk of releasing new updates.
- Monitoring and Error Logging: Tools like Sentry and Datadog can be used for real-time error tracking and monitoring application performance.


## License

FairPair is released under the [MIT License](https://opensource.org/licenses/MIT).



