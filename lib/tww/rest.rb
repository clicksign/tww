require 'restclient'
require 'tww/client'

module TWW
  class Rest < Client
    def deliver(phone, message)
      xml = RestClient.post endpoint,
        NumUsu: config.username,
        Senha: config.password,
        SeuNum: config.from,
        Celular: phone,
        Mensagem: message

      Response.parse(xml)
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
