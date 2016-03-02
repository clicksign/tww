require 'tww/response'

module TWW
  class Client
    attr_accessor :config, :sent

    def initialize
      @sent = []
    end

    def deliver(phone, message)
      raise 'Need to be implemented'
    end
  end
end
