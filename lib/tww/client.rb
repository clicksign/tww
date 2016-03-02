require 'tww/response'

module TWW
  class Client
    attr_accessor :config

    def deliver(phone, message)
      raise 'Need to be implemented'
    end
  end
end
