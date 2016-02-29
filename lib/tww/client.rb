require 'tww/response'

module TWW
  class Client
    attr_accessor :config

    def deliver(phone, message)
      Response.new
    end
  end
end
