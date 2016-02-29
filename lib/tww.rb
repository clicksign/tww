require 'tww/version'
require 'tww/config'
require 'tww/client'

module TWW
  attr_accessor :config

  def self.config
    @config ||= Config.new
    @config.tap { |config|  yield(config) if block_given? }
  end

  def self.client
    Client.new.tap { |client| client.config = config }
  end
end
