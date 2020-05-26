# frozen_string_literal: true

require 'tww/response'

module TWW
  class Client
    attr_reader :config, :sent

    def initialize(config)
      @config = config
      @sent = []
    end

    def clear!
      sent.clear
    end

    def size
      sent.size
    end

    def deliver(_phone, _message, _extras = {})
      raise 'Need to be implemented'
    end

    def call(_phone, _message, _extras = {})
      raise 'Need to be implemented'
    end
  end
end
