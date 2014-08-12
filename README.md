Spree Product Activator
=====================

Simple way to make active/inactive a product

You're going to be able to see a checkbox to make a product active/inactive as you need, this in product admin site

Now you can use it like here:

```ruby
Spree::Product.without_inactive
```

or

```ruby
Spree::Product.with_inactive
```

Installation
------------

Add spree_product_activator to your Gemfile:

```ruby
gem 'spree_product_activator'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_product_activator:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_product_activator/factories'
```

Copyright (c) 2014 jtapia, released under the New BSD License
