require 'spec_helper'

describe TWW::REST do
  include_examples 'client'

  describe 'test array'do
    subject { client.sent.size }

    before do
      client.clear!

      client.deliver(phone, message)
      client.call(phone, message)
    end

    it { should eq(0) }
  end
end
