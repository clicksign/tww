require 'spec_helper'

describe TWW do
  before do
    TWW.config do |config|
      config.username = 'somebody'
      config.password = 'someword'
    end
  end

  let(:config) { TWW.config }
  let(:client) { TWW.client }

  it { expect(config).to_not be_nil }
  it { expect(config.username).to eq('somebody') }
  it { expect(config.password).to eq('someword') }

  it { expect(client).to_not be_nil }
  it { expect(client.config).to eq(config) }
end
