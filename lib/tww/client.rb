require 'restclient'
require 'tww/response'

module TWW
  class Client
    attr_accessor :config

    def deliver(phone, message)
      RestClient.post endpoint,
        NumUsu: config.username,
        Senha: config.password,
        SeuNum: config.from,
        Celular: phone,
        Mensagem: message

      Response.new
    end

    private
    def host
      'https://webservices.twwwireless.com.br'
    end

    def action
      '/reluzcap/wsreluzcap.asmx/EnviaSMS'
    end

    def endpoint
      host + action
    end
  end
end
