# Tandem

"All is fair when we pair."
![The Honorable Judge Fair Pear](pear.png?raw=true "The Honorable Judge Fair Pear")

With Tandem, pair programming is an integral part of the development workflow. We believe that pairing results in more effective problem solving and fewer bugs. It also builds a sense of shared responsibility for code and provides the opportunity to learn from each other.
On Tandem projects, each team has a lead developer who ensures that the developers on the team are rotating pairs frequently. For example, Dev 1 and Dev 2 paired during the last sprint, but in the upcoming sprint, Dev 1 should pair with Dev 3 and Dev 2 should pair with Dev 4.

Currently, a lead developer creates a rotation schedule spreadsheet they have to keep track of and update at the end of each sprint with a new pair rotation. This manual assignment/tracking can be tedious, especially when you are on a long project.
Tandem makes this process easier and automated for new projects. Following the initial project kick-off meeting, the lead developer usuallt needs to create a pairing rotation schedule for the duration of the project.

So! Projects made in Tandem now will automatically handle pairing rotation schedules for software engineering projects in a fair and balanced manor to promote postitive developer experiences.

## Features

### Project Sprint Planner
- Number of sprints
- Names of all developers
- Any PTO requested by the developers

### Pair Rotation Scheduler
The application generates a pairing rotation schedule based on the inputted project details. The schedule aims to ensure each developer pairs with every other developer an equal number of times, or as close to equal as possible.

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

## TO-DO

- Integration with External Calendar Services: Integrate with services like Google Calendar or Outlook to automatically add pair programming sessions to developers' calendars.

- Slack Integration: Send notifications to a Slack channel when the pair programming schedule is updated.

- Analytics Dashboard: Provide insights into pair programming sessions, such as the most and least common pairs, the number of sessions per developer, etc.

- Gamification of Pair Programming: Add elements of gamification, such as points or badges, to encourage developers to participate in pair programming sessions.

## License 

Tandem is unpaid work and is now released under the [GNU GENERAL PUBLIC LICENSE](LICENSE)

![madeintandem](license.jpg?raw=true "madeintandem")

