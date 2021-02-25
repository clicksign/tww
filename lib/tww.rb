# frozen_string_literal: true

require 'tww/version'
require 'tww/client'
require 'tww/rest'
require 'tww/testing'

module TWW
  @config = {}
  @factory = TWW::REST

  class << self
    attr_accessor :factory

    def config
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
end
