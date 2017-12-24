# leonardo

*leonardo is an Instagram clone, built using Ruby on Rails*

[Introduction](#introduction) | [Running the App](#running-the-app) | [Approach](#approach) | [Challenges](#challenges)

## Introduction

leonardo is my implementation of the Makers Academy Week 9 weekend challenge, the full spec for which can be found [here](https://github.com/makersacademy/instagram-challenge). The challenge was to build an Instagram clone using Ruby on Rails. As things stand, functionality includes:
 - The ability to create a post with a photo and caption
 - The ability to sign in and up
 - The ability to sign in or up via either a Facebook or Google account using OAuth 2
 - The ability to sign out

As per the spec, the next features to be implemented are:
 - The ability to comment on a post
 - The ability to like a post
 - The creation of user profile pages

 These features will entail the linking of User and Post models, adding new properties to the post model, and creating new Views for user profiles using RESTful routing.  


## Running the App

To run this application, first ensure you have Ruby [installed](https://www.ruby-lang.org/en/documentation/installation/), as well as the [bundler gem](http://bundler.io/) and [PostgreSQL](https://www.postgresql.org/). Fork or clone this repo, and run `bundle install` from the command line to install dependencies. Then, run `bin/rails db:create` to create the databases, and `bin/rails db:migrate` to seed them.

Run `bin/rail s` to launch a server, and then visit the correct port on the localhost to view the app. In rails, this is http://localhost:3000 by default.


## Approach

My approach to this project, as with other recent projects that I have worked on, was to establish the most minimal implementation of the application, and work towards that, before adding other features. For leonardo, this minimal implementation is represented by the following user stories:

```
As a gallivanter,
So I can show off my gallivanting,
I want to be able to upload photos

As a gallivanter,
So I can tell my adoring fans more about my adventures,
I want to be able to add a caption to my photos
```

Many other features, in order to be properly implemented, would rely on user accounts existing. For example, comments could be implemented on posts without user management, but are significantly less beneficial when those who create the posts do not know to whom these comments belong. From this consideration, the next step was to implement user management, using the Devise gem. In order to gain more comfortability with OAuth, which I had previously worked on in the [Gritinho project](https://github.com/somemarsupials/gritinho), I decided to implement OAuth sign-in using both Facebook and Google accounts. With user management implemented, there is now a solid base for building future features.


## Challenges

The main goal of this challenge was to simply gain more familiarity with Rails, which I feel more comfortable with now. The main challenge of this project was in implementing OAuth functionality. However, this was not too difficult, and simply involved troubleshooting through issues as they arose, but did not prove a particular challenge as such. 
