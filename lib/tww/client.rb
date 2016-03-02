require 'tww/response'

module TWW
  class Client
    attr_reader :config, :sent

    def initialize
      @config, @sent = TWW.config, []
    end

    def deliver(phone, message)
      raise 'Need to be implemented'
    end
  end
end
