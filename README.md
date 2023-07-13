# PairFair
Fair & Balanced Software Developer Pair-Programming Sprint Planner
---

![The Honorable Judge Fair Pear](pear.png?raw=true "The Honorable Judge Fair Pear")


FairPair is a Ruby on Rails application designed to automate the process of creating and managing a developer pairing rotation schedule for software engineering projects. The application allows the lead developer to input project details, including the number of sprints, developer names, and any scheduled paid time off (PTO). The application then generates a pairing rotation schedule, aiming to ensure each developer pairs with every other developer an equal number of times, or as close to equal as possible. The lead developer can view, save, and edit the schedule.

## Core Features

### Project Sprint Planner
- Number of sprints
- Names of all developers
- Any PTO requested by the developers

### Pair Rotation Scheduler
The application generates a pairing rotation schedule based on the inputted project details. The schedule aims to ensure each developer pairs with every other developer an equal number of times, or as close to equal as possible.

### Schedule Viewer
The lead developer can view/edit the generated schedule. The schedule clearly shows who is pairing with whom during each sprint and also shows who is on vacation and who is working solo during each sprint.

## Development

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

## Deployent
Ansible: ansible-playbook -i inventory.ini deploy_pairfair.yml
Terraform (w/ Ansible!): terraform apply


## TO-DO

Integration with External Calendar Services: Integrate with services like Google Calendar or Outlook to automatically add pair programming sessions to developers' calendars.

Slack Integration: Send notifications to a Slack channel when the pair programming schedule is updated.

Dietary Profile for Each User: Allow users to create a dietary profile with common dietary restrictions. This information can be used to filter taco recipes in the Taco Tracker.

Wishlist for Taco Recipes: Allow users to save their favorite taco recipes to a wishlist for future reference.

Analytics Dashboard: Provide insights into pair programming sessions, such as the most and least common pairs, the number of sessions per developer, etc.

Gamification of Pair Programming: Add elements of gamification, such as points or badges, to encourage developers to participate in pair programming sessions.

Machine Learning for Pairing Schedule: Use machine learning algorithms to optimize the pair programming schedule based on past data.


## License

FairPair is released under the [GNU GENERAL PUBLIC LICENSE](LICENSE)

![Can't get a dolla outta me](license.jpg?raw=true "Can't get a dolla outta me")


