require 'tww/sms'

module TWW
  class Client
    attr_accessor :config

    def deliver(phone, message)
      SMS.new
    end
  end
end
