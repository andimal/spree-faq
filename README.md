# Spree Frequently Asked Question

[![Build Status](https://secure.travis-ci.org/futhr/spree-faq.png?branch=master)](http://travis-ci.org/futhr/spree-faq)
[![Dependency Status](https://gemnasium.com/futhr/spree-faq.png)](https://gemnasium.com/futhr/spree-faq)
[![Coverage Status](https://coveralls.io/repos/futhr/spree-faq/badge.png?branch=master)](https://coveralls.io/r/futhr/spree-faq)

An spree extension for managing FAQs.

## Editing FAQs

1. Login to Administraton Console
2. Click on FAQ

## Installation

In your Gemfile:

```ruby
gem 'spree_faq', github: 'futhr/spree-faq'
```

**Note:** *Please consult the Versionfile at the root of the repository to determine which branch to use.*

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
* by writing or editing documentation
* by writing specifications
* by writing code (*no patch is too small*: fix typos, add comments, clean up inconsistent whitespace)
* by refactoring code
* by resolving [issues][2]
* by reviewing patches

Starting point:

* Fork the repo
* Clone your repo
* Run `bundle`
* Run `bundle exec rake test_app` to create the test application in `spec/test_app`
* Make your changes and follow this [Style Guide](https://github.com/thoughtbot/guides)
* Ensure specs pass by running `bundle exec rspec spec`
* Submit your pull request

Copyright (c) 2013 Josh Nussbaum, released under the [New BSD License][3]

[1]: http://www.fsf.org/licensing/essays/free-sw.html
[2]: https://github.com/futhr/spree-faq/issues
[3]: https://github.com/futhr/spree-faq/tree/master/LICENSE

