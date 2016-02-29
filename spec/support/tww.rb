RSpec.configure do |config|
  config.before do
    TWW.config do |config|
      config.from = 'ACME Inc.'
      config.username = 'acme'
      config.password = 'valid'
    end
  end
end
