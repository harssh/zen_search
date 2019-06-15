
[![Build Status](https://travis-ci.com/harssh/zen_search_test.svg?token=BVW2o4hfR7sCCYShDufF&branch=master)](https://travis-ci.com/harssh/zen_search_test)
 Zen Search
 ================
 Search application based on ruby on rails.
![Demonstration](https://sds.github.io/overcommit/overcommit.gif)
When executing a search operation, where data exists, values from any related entities should be included in the results. The user should be able to search on any field and exact value matching is fine (e.g. “mar” won’t return “mary”). The user should also be able to search for empty values, e.g. where description is empty.


## Requirements
-------------
This application requires:
- Ruby 2.5.1
- Rails 5.2.3
- MySQL
- bundler -  `gem install bundler`

Installation and Setup
---------------
- Download master ![branch](https://github.com/harssh/zen_search_test.git) and unzip.
- Browse to extracted folder.
- Copy database.yml.example to database.yml and please setup MySQL user and database name.
- Use command `bundle install` to install gems from Gemfile.
- Setup table and seeds using `rake db:setup && rake db:seed`
- For execution in development mode please use `rails s` and access application at [http://localhost:3000](http://localhost:3000/)
- To use production mode please use `RAILS_ENV=production rake db:setup && rake db:seed`
- Precompile assets `RAILS_ENV=production rake assets:precompile`.
- Execute server `rails s -e production` and access application at [http://localhost:3000](http://localhost:3000/).

Issues
-------------

Similar Projects
----------------

Contributing
------------

Credits
-------

License
-------
