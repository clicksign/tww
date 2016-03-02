require 'tww/version'
require 'tww/config'
require 'tww/client'
require 'tww/testing'

module TWW
  # TODO Is this line necessary?
  attr_accessor :config

  def self.config
    @config ||= Config.new
    @config.tap { |config|  yield(config) if block_given? }
  end

  def self.client
    @factory.new.tap { |client| client.config = config }
  end

  def self.enable_testing!
    @factory = TWW::Testing
  end

  def self.disable_testing!
    @factory = TWW::Client
  end
end

TWW.disable_testing!
