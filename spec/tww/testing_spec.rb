require 'spec_helper'

describe TWW::Testing do
  before(:all) { TWW.enable_testing! }
  after(:all) { TWW.disable_testing! }

  include_examples 'client'
  it { expect(client.sent).to_not be_empty }
end
