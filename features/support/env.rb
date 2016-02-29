require 'byebug'
require 'tww'

Before do
  TWW.config do |config|
    config.token = 'valid token'
  end

  @client = TWW.client
end
