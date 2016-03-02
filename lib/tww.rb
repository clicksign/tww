require 'tww/version'
require 'tww/config'
require 'tww/client'
require 'tww/rest'
require 'tww/testing'

module TWW
  class << self
    def config
      @config ||= Config.new
      @config.tap { |config|  yield(config) if block_given? }
    end

    def client
      @client ||= @factory.new
    end

    def enable_testing!
      reset_client
      @factory = TWW::Testing
    end

    def disable_testing!
      reset_client
      @factory = TWW::REST
    end

    def reset_client
      @client = nil
    end
  end

  disable_testing!
end
