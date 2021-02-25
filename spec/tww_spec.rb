# frozen_string_literal: true

require 'spec_helper'

describe TWW do
  let(:config) { TWW.config }
  let(:client) { TWW.client }

  describe 'config' do
    subject { config }

    it { should_not be_nil }
    it { should eq(TWW.config) }
    it { should eq(client.config) }

    it { should include(username: 'acme') }
    it { should include(password: 'valid') }
    it { should include(from: 'ACME Inc.') }
  end

  describe 'client' do
    subject { client }

    it { should_not be_nil }
  end
end
