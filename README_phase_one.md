# HomeFIT CLI Application

HomeFIT is a CLI application built in Ruby, which gives users a home-based workout they can perform, at home, during quarantine. We’ve tried to make this application as engaging and fun as possible, including an opening theme music and different exercise-based emojis aimed at motivating users to safely work out. 

Users are able to choose different workouts based on level of difficulty (e.g. Beginner, Intermediate, and Advanced). Users can save their past workouts, and can delete their workout history if they so choose. Users also have the ability to change their password for added security. We’ve used SQLite3 for our database and ActiveRecord to make database migrations. 

This version is our ‘MVP,’ and future updates we’d like to make are:
 * Linking diagrams/videos to demonstrate the mechanics of a workout if users are not familiar with it. 
 * Adding assorted motivational messages based on the amount of workouts a user performs.
 * Adding additional workouts to give users more flexibility. 

## Install instructions

Clone Github repo

Install gems by running bundle install in your terminal
```ruby
bundle install
```
Run ruby bin/run.rb to start HomeFIT in your terminal.
```ruby
ruby bin/run.rb
```

## Contributors Guide

If you would like to contribute to our project, go ahead and clone our repository, create a seperate branch and we will review any pull requests. If we like your changes, we can add your contribution! 
