require 'byebug'
require 'webmock/cucumber'
require 'coveralls'
require 'tww'

Coveralls.wear!

Before do
  TWW.config do |config|
    config.username = 'ACME Inc.'
    config.username = 'acme'
    config.password = 'valid'
  end

  @client = TWW.client
end

Around('@testing') do |*, block|
  TWW.enable_testing!
  block.call
  TWW.disable_testing!
end
