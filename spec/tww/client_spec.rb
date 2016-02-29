require 'spec_helper'

describe TWW::Client do
  subject(:client) { TWW.client }
  let(:phone) { '11987654321' }
  let(:message) { 'Hello World' }
  let(:status) { client.deliver(phone, message) }

  it { expect(status).to be_ok }
end
