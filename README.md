# FairPair - Product Requirements Document (PRD)

## Developer Pairing Rotation Scheduler

## Purpose:
The purpose of this application is to automate the process of creating and managing a developer pairing rotation schedule for software engineering projects. The application will allow the lead developer to input project details, including the number of sprints, developer names, and any scheduled paid time off (PTO). The application will then generate a pairing rotation schedule, aiming to ensure each developer pairs with every other developer an equal number of times, or as close to equal as possible. The lead developer should be able to view, save, and edit the schedule.

## Features:

### 1. User Interface for Inputting Project Details
- The application should provide a user-friendly interface for the lead developer to input the following project details:
  - Number of sprints
  - Names of all developers
  - Any PTO requested by the developers

### 2. Pairing Rotation Schedule Generation
- The application should generate a pairing rotation schedule based on the inputted project details.
- The schedule should aim to ensure each developer pairs with every other developer an equal number of times, or as close to equal as possible.

### 3. Schedule Viewing
- The lead developer should be able to view the generated schedule.
- The schedule should clearly show who is pairing with whom during each sprint.
- The schedule should also show who is on vacation and who is working solo during each sprint.

### 4. Schedule Saving and Editing
- The lead developer should be able to save the generated schedule.
- The saved schedule should be persistent, i.e., it should be available for viewing and editing at a later time.
- The lead developer should be able to edit the saved schedule.

## Assumptions:
- Each sprint has a duration of 1 week.
- Each sprint starts on Monday and ends on Friday (there are no partial sprints). Each day of PTO is a full day off.
- All PTO was scheduled in advance of the project starting.
- The user can view the pair rotation schedule.
- Each developer pairs with every other developer an equal number of times during the project, or as close to equal as possible.
- The user can view the requested vacation time for the developers on the project during each sprint. During any given sprint, at most 1 developer is soloing.
- The sprint schedule data is persisted.

## Non-Functional Requirements:
- The application should be developed using Ruby on Rails.
- The application should include RSpec tests to ensure the functionality is working as expected.
- The application should be user-friendly and intuitive to use.
- The application should be secure, ensuring that only the lead developer can view, save, and edit the schedule.

## Future Enhancements:
- Integration with calendar applications for automatic reminders and updates.
- Notifications to developers about their upcoming pairing schedule.
- Integration with project management tools for seamless project planning and execution.
