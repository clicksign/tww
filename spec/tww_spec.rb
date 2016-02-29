require 'spec_helper'

describe TWW do
  before do
    TWW.config do |config|
      config.token = 'my token'
    end
  end

  let(:config) { TWW.config }
  let(:client) { TWW.client }

  it { expect(config).to_not be_nil }
  it { expect(config.token).to eq('my token') }
  it { expect(client).to_not be_nil }
  it { expect(client.config).to eq(config) }
end
