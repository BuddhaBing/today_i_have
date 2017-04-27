# Today I Have...

[![Build Status](https://travis-ci.org/treborb/today_i_have.svg?branch=master)](https://travis-ci.org/treborb/today_i_have)
[![codecov](https://codecov.io/gh/treborb/today_i_have/branch/master/graph/badge.svg)](https://codecov.io/gh/treborb/today_i_have)

## Ruby on Rails Tech Test

## Technologies
* [Ruby](https://www.ruby-lang.org/en/)
* [Ruby on Rails](http://rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org/)
* [Slim Template](http://slim-lang.com/)
* [Bootstrap](https://getbootstrap.com/)
* [Rspec](http://rspec.info/)
* [Capybara](https://github.com/teamcapybara/capybara)

## Jump To
* [Installation](#install)
* [Usage](#usage)
* [Tests](#tests)

## The Brief

Using Ruby on Rails, develop a simple web application that allows users to login and post small updates on what they have been working on today. The user should be able to add one or more ‘tags’ to an update to allow for flexible categorisation.
These updates should be viewable by everyone, and should be able to be filtered by tags.

#### Core Deliverables
1. Index that shows all updates organised by/grouped by day
2. Ability to add a new update
a. Should require login to post update
b. Login/authentication does not have to be comprehensive (i.e. can just check
username/password against database). You do not need to provide the ability to
add/manage users.
3. Validation, and graceful handling of errors:
a. Updates should not be allowed to have the same title/user/date combination
b. User should not be able to post more than one update per day
c. No field should be allowed to be blank
4. Index that shows all tags and allows you to view updates filed under that tag
5. User should be able to enter new tags when posting an update
a. System should have necessary functionality to determine if a tag is new or not 6. Database schema that handles the relationship between updates, tags and users

## <a name="approach">My approach and challenges</a>

I decided to use the gem [ActsAsTaggableOn](https://github.com/mbleigh/acts-as-taggable-on) for the tagging aspect, as I didn't see much use in spending time on something that was already a solved problem. The downside to using a gem for functionality is that often on first use of the gem, it can take more time figuring out the syntax and built in helper methods that go along with it, than it would to implement the functionality yourself. In the end I still think it saved time, albeit not as much as I had liked, but if I were to use the gem again in a future project, I am certain that it would save time.

## <a name="install">Installation</a>
```
$ git clone https://github.com/treborb/today_i_have.git
$ cd today_i_have
$ rvm use 2.3.3 --install --binary --fuzzy
$ gem install bundler
$ bundle
$ bin/rake db:create
```

## <a name="usage">Usage</a>

```
$ bin/rake db:seed
$ bin/rails s
$ open http://localhost:3000
```

## <a name="tests">Running the tests</a>
```
$ rspec
```
