RSpec.describe Ganji::Mpesa::AccessToken do
  let(:access_token) { "lWRotsxGVJQfIDUAyR9fjTG6sbW7" }
  before do
    allow(Ganji::Mpesa::AccessToken).to receive(:call).and_return(:access_token)
    Ganji::Mpesa::AccessToken.call
  end

  it "should response to call method" do
    expect(Ganji::Mpesa::AccessToken).to have_received(:call)
  end

  it "should generate a token" do
    expect(Ganji::Mpesa::AccessToken.call).to eq(:access_token)
  end
end
