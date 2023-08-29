# FairPair
"All is fair when we pair."

## What's this?
Just a silly example app really meant for scaffolding SaaS products. Save yourself years of work with FairPair, an opinionated tuna sandwich of Rails-y garnishes and patterns.



![The Honorable Judge Fair Pear](pear.png?raw=true "The Honorable Judge Fair Pear")

## Introduction
Pair programming results in more effective problem solving and fewer bugs. It also builds a sense of shared responsibility for code and provides the opportunity to learn from each other. Each team has a lead developer who ensures that the developers on the team are rotating pairs frequently. For example, Dev 1 and Dev 2 paired during the last sprint, but in the upcoming sprint, Dev 1 should pair with Dev 3 and Dev 2 should pair with Dev 4. Currently, a lead developer creates a rotation schedule spreadsheet they have to keep track of and update at the end of each sprint with a new pair rotation. This manual assignment/tracking can be tedious, especially when you are on a long project. FairPair makes this process easier and automated for new projects. Following the initial project kick-off meeting, the lead developer usuallt needs to create a pairing rotation schedule for the duration of the project. Automatically handle pairing rotation schedules for software engineering projects in a fair and balanced manor to promote postitive developer experiences.

The goal here is to provide a user interface for a lead developer to enter the number of sprints, the names of all developers, and any paid time off they have requested during the project. Using this information, the application generates the best pairing rotation possible. By best, I mean that each developer on the team will be paired with each of their teammates an equal number of times or as close to equal as possible. The lead developer wants to see who is pairing, on vacation, and working solo during a sprint (one person will have to work solo if there is an odd number of developers on the team). Additionally, the lead developer can come back to the schedule without having to re-enter all the project and developer details.


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

FairPair is unpaid work and is now released under the [GNU GENERAL PUBLIC LICENSE](LICENSE)

![madeintandem](license.jpg?raw=true "madeintandem")

