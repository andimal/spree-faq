# Spree Frequently Asked Question

[![Build Status](https://secure.travis-ci.org/futhr/spree-faq.png?branch=master)](http://travis-ci.org/futhr/spree-faq)
[![Dependency Status](https://gemnasium.com/futhr/spree-faq.png)](https://gemnasium.com/futhr/spree-faq)
[![Coverage Status](https://coveralls.io/repos/futhr/spree-faq/badge.png?branch=master)](https://coveralls.io/r/futhr/spree-faq)

An spree extension for managing FAQs.

## Installation

In your `Gemfile`:

```ruby
gem 'spree_faq', github: 'futhr/spree-faq'
```

Then run from the command line:

    $ bundle install
    $ rails g spree_faq:install
    $ rake db:migrate

## Contributing

In the spirit of [free software][1], **everyone** is encouraged to help improve this project.

Here are some ways *you* can contribute:

* by using prerelease versions
* by reporting [bugs][2]
* by suggesting new features
* by writing [translations][4]
* by writing or editing documentation
* by writing specifications
* by writing code (*no patch is too small*: fix typos, add comments, clean up inconsistent whitespace)
* by refactoring code
* by resolving [issues][2]
* by reviewing patches

Starting point:

* Fork the repo
* Clone your repo
* Run `bundle install`
* Run `bundle exec rake test_app` to create the test application in `spec/test_app`
* Make your changes and follow this [Style Guide][5]
* Ensure specs pass by running `bundle exec rspec spec`
* Submit your pull request

Copyright (c) 2013 Josh Nussbaum, released under the [New BSD License][3]

[1]: http://www.fsf.org/licensing/essays/free-sw.html
[2]: https://github.com/futhr/spree-faq/issues
[3]: https://github.com/futhr/spree-faq/tree/master/LICENSE
[4]: http://www.localeapp.com/projects/5165
[5]: https://github.com/thoughtbot/guides

