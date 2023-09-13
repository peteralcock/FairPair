# SpeedDater
"Life is short. Date faster."

## What's this?
For scaffolding speed dating events. Save yourself the hassle with Speedater, designed with best practices in mind to ensure memorable dating experiences.

## Introduction
Speed dating is an efficient way to meet multiple potential matches in a short amount of time. It provides an opportunity to interact face-to-face, leading to genuine connections. Event organizers often face challenges in creating balanced rotations to ensure participants meet as many different people as possible. Speedater automates this process, ensuring a smooth and enjoyable experience for both participants and organizers.

Following the initial event setup, organizers can input the number of dating rounds, names of all participants, and any special requests or preferences. Using this information, Speedater generates the optimal dating rotation. This ensures that each participant interacts with as many different people as possible during the event.

## Features

### Event Round Planner
- Number of dating rounds
- Names of all participants
- Any special requests or preferences by the participants

### Date Rotation Scheduler
The application generates a date rotation schedule based on the inputted event details. The schedule ensures each participant meets every other participant, maximizing interactions.

### Prerequisites
- Ruby 3.1.2
- Rails 7.0.4
- PostgreSQL 13.0

### Installation
1. Clone the repository: `git clone https://github.com/username/speedater.git`
2. Navigate to the project directory: `cd speedater`
3. Install the dependencies: `bundle install`
4. Set up the database: `rails db:create db:migrate`
5. Start the server: `rails server`

## TO-DO

- Integration with External Calendar Services: Integrate with services like Google Calendar or Outlook to automatically add speed dating events to participants' calendars.

- Notification System: Send notifications to participants when the event schedule is updated or when they have a match.

- Analytics Dashboard: Provide insights into events, such as the most and least common matches, feedback scores, etc.

- Gamification of Speed Dating: Add elements of gamification, such as points or badges, to encourage participants to engage and provide feedback.

## License 

Speedater is a passion project and is now released under the [GNU GENERAL PUBLIC LICENSE](LICENSE)
