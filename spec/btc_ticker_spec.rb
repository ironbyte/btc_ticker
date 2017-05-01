require 'spec_helper'

describe BTCTicker::Bitstamp::Ticker do
  let(:btc_usd_hash) { {'high'=>'1135.00', 'last'=>'1124.63', 'timestamp'=>'1491228359', 'bid'=>'1123.95', 'vwap'=>'1104.47', 'volume'=>'11545.49313535', 'low'=>'1071.12', 'ask'=>'1125.53', 'open'=>'1076.59'} }
  subject(:ticker) { BTCTicker::Bitstamp::Ticker }

  describe '.get_info(pair)' do
    context 'When valid argument is given' do
      it 'returns a 200 OK status' do
        expect(ticker.get_info(:btc_usd).response.code).to eql '200'
      end

      it 'returns an Hash object populated with the valid ticker info' do
        expect(ticker.get_info(:btc_usd)).to eql btc_usd_hash
      end
    end

    context 'When invalid argument is given' do
      it 'raises ArgumentError' do
        expect { ticker.get_info('abba') }.to raise_error ArgumentError
      end
    end
  end
end
