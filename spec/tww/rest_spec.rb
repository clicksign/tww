require 'spec_helper'

describe TWW::REST do
  include_examples 'client'
  it { expect(client.sent).to be_empty }
end
