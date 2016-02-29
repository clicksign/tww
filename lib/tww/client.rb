require 'restclient'
require 'tww/response'

module TWW
  class Client
    attr_accessor :config

    def deliver(phone, message)
      # NumUsu=string&Senha=string&SeuNum=string&Celular=string&Mensagem=string
      # RestClient.post(endpoint)
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
