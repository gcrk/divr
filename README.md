# DIVR | An App for Scuba Divers

## Introduction

This is my 1st project during Software Engineering Immersive course at General Assembly.
This app is for divers and diving center owners. As a user you can upload your diving videos and also tracking all your dives by recording all important informations.
As a professional user you can list you diving center so user can find you on an interactive world map.

## Ruby on Rails
  Ruby 2.7.1
  Rails 5.2.4.4

## System dependencies
  #### gem cloudinary
  #### gem jquery
  #### gem bcrypt
  #### API Leaflet
  #### API Maptiler

## Languages
  HTML
  CSS
  Javascript
  Ruby
  Rails

## Database creation
To run locally, run the following in the root directory in the terminal:
1. `npm install`
2. `bundle install`
3. `rails db:create`
4. `rails db:migrate`
5. `rails db:seed`
6. `rails s`

## The App
  You can visit the app at this address: [divR](https://divr-app.herokuapp.com/scubas)

  **login infos: email: jm@divr.com / password: chicken**

  ### Users

  You can create to use the app. There 2 type of account : **personal** and **professional**
  with a personal account you can share videos and you can log data from your dives
  with a professional account you can add your own diving center to the list
  ### Diving center
  With this app you have access to a list of diving centers you can see their location on a map.
  for each center you have access to informations like contacts infos / website / country / ...
  ### Videos
  there is a list of videos shared by users. videos have to be hosted on youtube
  ### Dives
  This part is only for registered user and the dives data are personal. Divers can track his dives on a map with markers.
  ### Account
  The account page give details about the account and specific link to edit datas.
