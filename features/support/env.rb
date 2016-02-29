require 'byebug'
require 'webmock'
require 'tww'

Before do
  TWW.config do |config|
    config.username = 'somebody'
    config.password = 'someword'
  end

  @client = TWW.client
end
