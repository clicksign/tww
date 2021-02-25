# frozen_string_literal: true

require 'tww/response'

module TWW
  class Client
    attr_reader :config

    def initialize(config)
      @config = config
    end

    def deliver(_phone, _message, _extras = {})
      raise 'Need to be implemented'
    end
  end
end
