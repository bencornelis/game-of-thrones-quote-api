## Game of Thrones Quote API

An api for random Game of Thrones show quotes.

### API endpoints

* `/quote`             : returns a random quote
* `/quotes`            : returns 10 random quotes
* `/quotes?count={key}`: returns a collection of random quotes

### Setup

To get started run:
* `bundle`
* `rake db:create`
* `rake db:migrate`

To run the tests:
* `rake db:test:prepare`
* `rspec`

To seed the database with quotes and characters, run `rake db:seed`.
