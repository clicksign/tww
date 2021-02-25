require 'spec_helper'
require 'byebug'

describe TWW::REST do
  include_examples 'client'

  shared_examples 'changeable endpoint' do |endpoint:, url:|
    subject { WebMock }

    before { TWW.config[:endpoint] = endpoint }

    describe 'deliver' do
      before { client.deliver(phone, message) }
      it { should have_requested(:post, /^#{url}/) }
    end
  end

  it_behaves_like 'changeable endpoint',
    endpoint: :primary,
    url: 'https://webservices.twwwireless.com.br'

  it_behaves_like 'changeable endpoint',
    endpoint: :secondary,
    url: 'https://webservices2.twwwireless.com.br'
end
