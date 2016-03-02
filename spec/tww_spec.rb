require 'spec_helper'

describe TWW do
  let(:config) { TWW.config }
  let(:client) { TWW.client }

  it { expect(config).to_not be_nil }
  it { expect(config.from).to eq('ACME Inc.') }
  it { expect(config.username).to eq('acme') }
  it { expect(config.password).to eq('valid') }

  it { expect(client).to_not be_nil }
  it { expect(client.config).to eq(config) }
  it { expect(client).to eq(TWW.client) }
end
