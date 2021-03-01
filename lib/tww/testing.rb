# frozen_string_literal: true

require 'tww/client'

module TWW
  class Testing < Client
    attr_reader :sent

    def initialize(config)
      super
      @sent = []
    end

    def clear!
      sent.clear
    end

    def size
      sent.size
    end

    def deliver(phone, message, extras = {})
      request(phone, message, extras)
    end

    def call(phone, message, extras = {})
      request(phone, message, extras)
    end

    private

    def request(phone, message, _extras)
      Response.parse("<string>#{status(phone)}</string>").tap do |response|
        sent.push(phone: phone, message: message, response: response)
      end
    end

    def status(phone)
      phone =~ /^\d{10,}$/ ? 'OK' : 'NOK'
    end
  end
end
