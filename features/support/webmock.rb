Before do
  stub_request(:post, 'https://webservices.twwwireless.com.br/reluzcap/wsreluzcap.asmx/EnviaSMS')
    .with(body: hash_including('NumUsu' => 'acme', Senha: 'valid', 'Celular' => '11987654321'))
    .to_return(body: %Q(<?xml version="1.0" encoding="utf-8"?>\n<string xmlns="https://www.twwwireless.com.br/reluzcap/wsreluzcap">OK</string>))

  stub_request(:post, 'https://webservices.twwwireless.com.br/reluzcap/wsreluzcap.asmx/EnviaSMS')
    .with(body: hash_including('NumUsu' => 'acme', Senha: 'valid', 'Celular' => 'invalid'))
    .to_return(body: %Q(<?xml version="1.0" encoding="utf-8"?>\n<string xmlns="https://www.twwwireless.com.br/reluzcap/wsreluzcap">NOK</string>))

  stub_request(:post, 'https://webservices.twwwireless.com.br/reluzcap/wsreluzcap.asmx/EnviaSMS')
    .with(body: hash_including('NumUsu' => 'acme', Senha: 'invalid'))
    .to_return(body: %Q(<?xml version="1.0" encoding="utf-8"?>\n<string xmlns="https://www.twwwireless.com.br/reluzcap/wsreluzcap">NOK</string>))

  stub_request(:post, 'https://webservices.twwwireless.com.br/reluzcap/wsreluzcap.asmx/EnviaSMS')
    .with(body: hash_including('NumUsu' => 'acme', Senha: 'na'))
    .to_return(body: %Q(<?xml version="1.0" encoding="utf-8"?>\n<string xmlns="https://www.twwwireless.com.br/reluzcap/wsreluzcap">NA</string>))

  stub_request(:post, 'https://webservices.twwwireless.com.br/reluzcap/wsreluzcap.asmx/EnviaSMS')
    .with(body: hash_including('NumUsu' => 'acme', Senha: 'erro'))
    .to_return(body: %Q(<?xml version="1.0" encoding="utf-8"?>\n<string xmlns="https://www.twwwireless.com.br/reluzcap/wsreluzcap">Erro</string>))
end
