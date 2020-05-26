require 'webmock/cucumber'
require 'coveralls'
require 'tww'

Coveralls.wear!

Before do
  TWW.config do |config|
    config.username = 'acme'
    config.password = 'valid'
    config.from = 'ACME Inc.'
  end

  @client = TWW.client
end

Around('@testing') do |*, block|
  TWW.enable_testing!
  block.call
  TWW.disable_testing!
end
