require 'tww/response'

module TWW
  class Client
    attr_reader :config, :sent

    def initialize
      @config, @sent = TWW.config, []
    end

    def clear!
      sent.clear
    end

    def size
      sent.size
    end

    def deliver(phone, message, extras = {})
      raise 'Need to be implemented'
    end

    def call(phone, message, extras = {})
      raise 'Need to be implemented'
    end
  end
end
