require 'spec_helper'

describe BTCTicker::Bitstamp::Ticker do
  let(:btc_usd_hash) { {'high'=>'1135.00', 'last'=>'1124.63', 'timestamp'=>'1491228359', 'bid'=>'1123.95', 'vwap'=>'1104.47', 'volume'=>'11545.49313535', 'low'=>'1071.12', 'ask'=>'1125.53', 'open'=>'1076.59'} }
  let(:btc_eur_hash) { {'high'=>'1661.13', 'last'=>'1637.78', 'timestamp'=>'1494772901', 'bid'=>'1628.88', 'vwap'=>'1624.50', 'volume'=>'998.95147482', 'low'=>'1559.98', 'ask'=>'1637.78', 'open'=>'1638.00'} }
  subject(:ticker) { BTCTicker::Bitstamp::Ticker }

  describe '.get_info(pair)' do
    context 'When given pair is :btc_usd' do
      it 'returns an Hash object populated with the valid BTC-USD ticker info' do
        expect(ticker.get_info(:btc_usd)).to eql btc_usd_hash
      end
    end

    context 'When given pair is :btc_eur' do
      it 'returns an Hash object populated with the valid BTC-EUR ticker info' do
        expect(ticker.get_info(:btc_eur)).to eql btc_eur_hash
      end
    end

    context 'When given pair is invalid' do
      it 'raises ArgumentError' do
        expect { ticker.get_info('abba') }.to raise_error ArgumentError
      end
    end
  end
end
