# How Hot is today?

This application determines hot, cold or warm based on the maximum temperature for the UK location based on postcode.

It will show error if the Postcode is invalid for the UK.

## Setup

Application is build on Ruby on Rails platform with following requirements.

- ruby 2.7.5
- rails 6.1
- Sqlite3 as database

    #### Process

    - Clone the repo
    - Execute `bundle install` to install all dependency
    - Execute `rake db:migrate` to run the db migration
    - Enjoy with `rails s` to start the server and access `localhost:3000`

## Weather API

Weather detail has been fetched via weather API provided by https://api.weather.com
