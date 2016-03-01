require 'tww/client'
require 'tww/response'

module TWW
  class Client
    attr_accessor :sent

    def initialize
      @sent = []
    end

    def deliver(phone, message)
      sent.push(phone: phone, message: message)
      Response.parse('<string>OK</string>')
    end

    def clear
      sent.clear
    end
  end
end
