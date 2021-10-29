# Car Rentals

A RESTFUL API built with Ruby on Rails. It uses Auth0 to implement Authentication & Authorization.

## About this project

This API is built as the back end for a web application built with React on the front end and is separately deployed to Netlify.

## End Points

There are a couple of endpoints exposed by this api and can be accessed online using [this path]() as the base Url.

## POST

- /users - (create user account)
- /appointments - (create appointment)

## GET

- /cars - (fetch all cars)
- /cars/:id - (fetch single car)
- /users/:id - (fetch user appointments)

## Built With

- Ruby on Rails
- Postgresql
- Heroku
- Rspec
- Auth0

## Live Demo

For the full working application Click [here]()

## Installation

To get a local copy up and running follow these simple example steps.

### Setup

Clone [this](https://github.com/Arinpe/Car_Rentals) repository

### Follow:

1. cd into the project directory
2. run bundle install
3. run rails db:migrate
4. run rails db:seed
5. replace ENV variables with yours in app/lib/json_web_token.rb
6. Navigate to localhost:3001

### Run tests
  - Run:
    - rpsec

## Author

  👤 **Adetola Adesuyi**

  - Github:[@Arinpe](https://github.com/Arinpe)
  - Twitter:[@_detola_](https://twitter.com/_detola_)
  - LinkedIn:[aadetola](https://www.linkedin.com/in/aadetola)

## 🤝 Contributing

  - Contributions, issues and feature requests are welcome!

  - Feel free to check the [issues page](https://github.com/somoye123/Car_Rentaalsapi/issues)

## Show your support

  - Give a ⭐️ if you like this project!
