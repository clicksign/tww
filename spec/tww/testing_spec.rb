require 'spec_helper'

describe TWW::Testing do
  include_examples 'client'

  before(:all) { TWW.enable_testing! }
  after(:all) { TWW.disable_testing! }

  describe 'test array' do
    subject { client.size }

    before do
      client.clear!
      client.deliver(phone, message)
      client.call(phone, message)
    end

    it { should eq(2) }
  end
end
