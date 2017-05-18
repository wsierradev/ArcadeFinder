# ArcadeFinder


ArcadeFinder is a Ruby on Rails application for those who are looking for arcades in their area. Users are presented with a map of arcades in North America. They can visit a specific arcade's page or add a arcade of their own.

Root path is a landing page where users can sign up, sign in and/or be routed to a list of arcades or games. The list of arcades will allow current user to view a specific arcade.
The list of games will allow current user to view a specific games page. Clicking on a arcade will take them to a page where they can get information about the arcade (location, images, list of games and maps data) as well as the ability to add games to that arcade. Clicking on a game will take them to a page where they can get information about the game (release year, aliases, genre ect.) as well as a list of arcades where that game can be found.

https://arcade-finder.herokuapp.com

Ruby version $ 2.3.3
Database creation $ rake db:create
Database initialization $ rake db:migrate
How to run the test suite $ rspec
Deployment instructions $ rails s $ npm start

![Build Status](https://codeship.com/projects/9b99ec30-ef7d-0134-dc5d-06835e321a69/status?branch=master)
![Code Climate](https://codeclimate.com/github/wsierradev/ArcadeFinder.png)
![Coverage Status](https://coveralls.io/repos/wsierradev/ArcadeFinder/badge.png)
