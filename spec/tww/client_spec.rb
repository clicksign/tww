require 'spec_helper'

describe TWW::Client do
  subject(:client) { TWW.client }
  let(:message) { 'Hello World' }
  let(:status) { client.deliver(phone, message) }

  context 'valid phone' do
    let(:phone) { '11987654321' }
    it { expect(status).to be_ok }
  end

  context 'valid phone' do
    let(:phone) { 'invalid' }
    it { expect(status).to be_nok }
  end
end
