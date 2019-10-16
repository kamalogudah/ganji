# Ganji

This gem aims to integrate Kenyan Payments solutions, something like [Active Merchant](https://github.com/activemerchant/active_merchant) to make it easier for Ruby developers to integrate local payment solutions in their applications. This gem was inspired by [mpesa_stk](https://github.com/mboya/mpesa_stk) and aims to build on what was started there, by adding more mpesa payment functionality and other payment solutions as well.



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ganji'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ganji
    
# Getting Started
This gem has a [Redis](https://redis.io/) dependency, so make sure it running
```ruby
$ redis-server
```

you need to setup your environment variables, checkout `.sample.env` for the values you need.
or run
```ruby
$ cp .sample.env .env
```
open `.env` on your editor and add the missing variable
```
key=""
secret=""
business_short_code=""
business_passkey=""
callback_url=""
```

* `key` and `secret` of the app created on your [developer account](https://developer.safaricom.co.ke/user/me/apps).
* `business_short_code`  and `business_pass_key` this can be found in [Test Credentials](https://developer.safaricom.co.ke/test_credentials).
* `callback_url` the url of your application where response will be sent. `make sure its a reachable/active url`

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kamalogudah/ganji. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Ganji project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/ganji/blob/master/CODE_OF_CONDUCT.md).
