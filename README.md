HR jobs advertisement
========

Rails app that provides HR department to advertise jobs


Compatibility
-------------

* Ruby 2.4.3

* PostgreSQL 10.1

* Rails 5.1.5

Setup
------------

After forked and cloned the repository, run bundle:

`bundle install`

Create Database and tables:

`rails db:setup db:migrate`

Create seeds for campaign examples

`rails db:seed`

Start the Rails application

`rails s`

Campaigns output

Access `http://localhost:3000/campaigns` on your browser

Tests
------------

Run the test suite
`rspec`
