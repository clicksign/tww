# frozen_string_literal: true

require 'spec_helper'

describe TWW::Config do
  subject(:config) { TWW.config }

  describe 'default config' do
    it { should have_attributes(username: 'acme', password: 'valid') }
  end

  describe 'custom options' do
    subject { config.merge(username: 'alice', password: 'secret') }
    it { should have_attributes(username: 'alice', password: 'secret') }
  end
end
