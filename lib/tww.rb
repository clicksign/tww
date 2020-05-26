# frozen_string_literal: true

require 'tww/version'
require 'tww/config'
require 'tww/client'
require 'tww/rest'
require 'tww/testing'

module TWW
  class << self
    def config
      @config ||= Config.new
      @config.tap { |config| yield(config) if block_given? }
    end

    def client(options = {})
      @factory.new(@config.merge(options))
    end

    def enable_testing!
      @factory = TWW::Testing
    end

    def disable_testing!
      @factory = TWW::REST
    end
  end

  disable_testing!
end
