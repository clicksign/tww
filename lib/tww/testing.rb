require 'tww/response'

module TWW
  class Testing
    attr_accessor :config, :sent

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
