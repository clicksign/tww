Before do
  stub_request(:post, 'https://webservices.twwwireless.com.br/reluzcap/wsreluzcap.asmx/EnviaSMS')
  .with(body: hash_including('NumUsu' => 'acme', Senha: 'valid'))
  .to_return(body: %Q(<?xml version="1.0" encoding="utf-8"?>\n<string # xmlns="https://www.twwwireless.com.br/reluzcap/wsreluzcap">OK</string>))
end
