# Task API Example App

This is a basic demo application to showcase the backend development abilities of Andrew Martin. It was built using Rails.

## Initial Requirements

Create a Rails endpoint that returns a list of 30 or so users with the following attributes:

- Name - Can be anything
- Role - Admin, Marketing, Support, User
- Location - Los Angeles, San Francisco, Denver
- Task - Can be anything, but limit to 5 different types of tasks

Seed the database with test data of your choosing. There is a one to many relationship between users and tasks. Each task can only have one location. There is no relationship between users and locations.

See the [React Frontend Demo App](https://github.com/andrewmartin/tasks-demo-react).

## Quickstart

1. `bundle`
2. `rails db:migrate`
3. `rails db:seed`
4. `foreman start`
