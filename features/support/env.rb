require 'byebug'
require 'webmock/cucumber'
require 'tww'

Before do
  TWW.config do |config|
    config.username = 'ACME Inc.'
    config.username = 'acme'
    config.password = 'valid'
  end

  @client = TWW.client
end
