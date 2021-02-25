# frozen_string_literal: true

require 'restclient'
require 'tww/client'

module TWW
  class REST < Client
    ENDPOINTS = {
      primary: 'https://webservices.twwwireless.com.br' \
        '/reluzcap/wsreluzcap.asmx/EnviaSMS',
      secondary: 'https://webservices2.twwwireless.com.br' \
        '/reluzcap/wsreluzcap.asmx/EnviaSMS'
    }.freeze

    BASE_MESSAGE = {
      retry: 0,
      retrytime: 0,
      var2: nil,
      var3: nil,
      var4: nil,
      var5: nil,
      var6: nil
    }.freeze

    def deliver(phone, message, extras = {})
      request(endpoint, deliver_params(phone, message, extras))
    end

    private

    def endpoint
      ENDPOINTS[config.fetch(:endpoint, :primary)]
    end

    def deliver_params(phone, message, extras)
      {
        NumUsu: config[:username],
        Senha: config[:password],
        SeuNum: config[:from],
        Celular: phone,
        Mensagem: message
      }.merge(extras)
    end

    def request(url, params)
      xml = RestClient::Request.new(
        method: :post,
        url: url,
        payload: params,
        timeout: config[:timeout]
      ).execute

      Response.parse(xml)
    end
  end
end
