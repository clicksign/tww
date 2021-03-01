# frozen_string_literal: true

require 'net/http'
require 'tww/client'

module TWW
  class REST < Client
    ENDPOINTS = {
      primary: 'https://webservices.twwwireless.com.br' \
        '/reluzcap/wsreluzcap.asmx/EnviaSMS',
      secondary: 'https://webservices2.twwwireless.com.br' \
        '/reluzcap/wsreluzcap.asmx/EnviaSMS'
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
      uri = URI(url)
      use_ssl = uri.scheme == 'https'

      Net::HTTP.start(uri.host, uri.port, use_ssl: use_ssl) do |http|
        post = Net::HTTP::Post.new(uri)
        post.set_form_data(params)
        res = http.request(post)

        Response.parse(res.body)
      end
    end
  end
end
