shared_examples 'client' do
  subject(:client) { TWW.client }
  let(:phone) { '11987654321' }
  let(:message) { 'Hello World' }

  before { client.sms(phone, message) }

  describe 'phone' do
    subject { client.sms(phone, message) }

    context 'with valid number' do
      let(:phone) { '11987654321' }
      it { should be_ok }
    end

    context 'with invalid number' do
      let(:phone) { 'invalid' }
      it { should be_nok }
    end
  end
end
