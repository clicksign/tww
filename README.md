# TWW

[![Build Status](https://travis-ci.org/dlibanori/tww.svg?branch=master)](https://travis-ci.org/dlibanori/tww)
[![Code Climate](https://codeclimate.com/github/dlibanori/tww/badges/gpa.svg)](https://codeclimate.com/github/dlibanori/tww)
[![Coverage Status](https://coveralls.io/repos/github/dlibanori/tww/badge.svg?branch=master)](https://coveralls.io/github/dlibanori/tww?branch=master)

Send SMS through TWW plataform. Avoid to handle with HTTP libraries or to parse XML response.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tww'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tww

## Usage

To send SMS:

```ruby
TWW.config do |config|
  config[:username] = 'you username goes here'
  config[:password]= 'you password goes here'
  config[:from] = 'Your identification (OPTIONAL)'
  config[:layout] = 'Layout ID (JUST FOR VOICE MESSAGES)'
end

client = TWW.client

client.deliver('11987654321', 'Hello World using old fashioned SMS')
```

You can inspect TWW response:

```
# Previous setup
resp = client.deliver('11987654321', 'Hello World using old fashioned SMS')

case
when resp.ok?
  puts 'Everything is nice!'
when resp.nok?
  puts 'Something goes wrong'
when resp.na?
  puts 'Service not available!'
when resp.error?
  puts 'Unknow error'
end
```

To fake SMS:

```ruby
require 'rspec'
require 'tww'

TWW.enable_testing!

RSpec.describe 'TWW Testing' do
  before
    client = TWW.client
    resp = client.deliver('11987654321', 'Hello World from TWW Gem')
  end

  it 'is not empty' do
    expect(client.sent).to_not be_empty
  end

  it 'is empty after clear'
    client.clear
    expect(client.sent).to be_empty
  end
end
```

## Support

It supports Ruby version 2.6 and later

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dlibanori/tww.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

