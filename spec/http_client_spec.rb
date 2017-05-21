require 'spec_helper'

describe BTCTicker::HTTPClient do
  let(:ticker_uri) { 'https://www.bitstamp.net/api/v2/ticker/btcusd/' }
  let(:not_found_uri) { 'https://www.bitstamp.net/api/v2' }

  describe '.get_http_response(uri)' do
    context 'When it makes a successful GET request' do
      it 'should return 200' do
        expect(BTCTicker::HTTPClient.get_http_response(ticker_uri).code).to eql 200
      end
    end

    context 'When it makes an unsuccessful GET request' do
      it 'should raise HTTPError error' do
        expect{ BTCTicker::HTTPClient.get_http_response(not_found_uri) }.to raise_error(BTCTicker::Errors::HTTPError)
      end
    end
  end
end
