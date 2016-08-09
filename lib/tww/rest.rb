require 'restclient'
require 'tww/client'

module TWW
  class REST < Client
    SMS = 'https://webservices.twwwireless.com.br' +
      '/reluzcap/wsreluzcap.asmx/EnviaSMS'

    CALL = 'http://webservices.fonadas.tww.com.br' +
      '/ws/Fonadas.asmx/EnviaFonada'

    def deliver(phone, message, extras = {})
      request(SMS, deliver_params(phone, message, extras))
    end

    def call(phone, message, extras = {})
      request(CALL, call_params(phone, message, extras))
    end

    private
    def call_params(phone, message, extras)
      now = Time.now.strftime('%Y-%m-%d %H:%M:%S')

      {
        numusu: config.username,
        senha: config.password,
        seunum: config.from,
        idlayout: config.layout,
        telefone: phone,
        dataagendamento: now,
        retry: 0,
        retrytime: 0,
        var1: message,
        var2: nil,
        var3: nil,
        var4: nil,
        var5: nil,
        var6: nil
      }.merge(extras)
    end

    def deliver_params(phone, message, extras)
      {
        NumUsu: config.username,
        Senha: config.password,
        SeuNum: config.from,
        Celular: phone,
        Mensagem: message
      }.merge(extras)
    end

    def request(url, params)
      xml = RestClient.post(url, params)
      Response.parse(xml)
    end
  end
end
