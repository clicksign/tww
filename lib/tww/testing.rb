require 'tww/client'

module TWW
  class Testing < Client
    attr_accessor :sent

    def initialize
      @sent = []
    end

    def deliver(phone, message)
      Response.parse("<string>#{ status(phone) }</string>").tap do |response|
        sent.push(phone: phone, message: message, response: response)
      end
    end

    def clear
      sent.clear
    end

    private
    def status(phone)
      phone =~ /^\d{10,}$/ ? 'OK' : 'NOK'
    end
  end
end
