# PicShare - backend

This is the repository for the backend of the PicShare app - an app which allows friends to combine their individual photos from an event into a single shared album.  

PicShare was inspired by a holiday with friends to Florida in 2009; I built it as my Flatiron final project so that we could finally put all our photos from the holiday into one place.

## Getting started

Fork and clone this repository.  You will also need to fork and clone the frontend repository which can be found here: https://github.com/CalieR/Holiday-Photo-App-frontend

### Prerequisites

This app was built using the following versions: 

```
ruby 2.6.1p33 (2019-01-30 revision 66950) [x86_64-darwin18]

Rails 5.2.3

postgres (PostgreSQL) 11.3

```
### Installing

Setup the Rails database:

```
bundle 

rails db:create

rails db:migrate

```

Start the Rails server.  The frontend will default to localhost:3000 so use -p flag to select a different port:

```
rails s -p 3002

```

## Built with

- Ruby on Rails
- PostgreSQL

## Acknowledgments

Thank you to all the tireless TCF's and instructors at Flatiron School
