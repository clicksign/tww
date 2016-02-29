RSpec.configure do |config|
  config.before(:example) do
    TWW.config do |config|
      config.username = 'acme'
      config.password = 'valid'
      config.from = 'ACME Inc.'
    end
  end
end
