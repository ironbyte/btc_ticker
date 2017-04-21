require "spec_helper"

describe BTCTicker::Bitstamp::Ticker do
  let(:btc_usd_hash) { {"high"=>"1135.00", "last"=>"1124.63", "timestamp"=>"1491228359", "bid"=>"1123.95", "vwap"=>"1104.47", "volume"=>"11545.49313535", "low"=>"1071.12", "ask"=>"1125.53", "open"=>"1076.59"} }
  let(:btc_eur_hash) { {"high"=>"1058.19", "last"=>"1056.48", "timestamp"=>"1491228415", "bid"=>"1047.01", "vwap"=>"1028.16", "volume"=>"1937.50447274", "low"=>"1000.00", "ask"=>"1056.49", "open"=>"1003.30"} }

  subject(:ticker) { BTCTicker::Bitstamp::Ticker }
  describe '.get_info(pair)' do
    context 'when the pair = :btc_usd' do
      it 'returns an Hash object populated with latest btc_usd ticker data' do
        expect(ticker.get_info(:btc_usd)).to be_an_instance_of Hash
        expect(ticker.get_info(:btc_usd)).to eql btc_usd_hash
      end
    end
    context 'when the pair = :btc_eur' do
      it 'returns an Hash object populated with latest btc_eur ticker data' do
        expect(ticker.get_info(:btc_eur)).to be_an_instance_of Hash
        expect(ticker.get_info(:btc_eur)).to eql btc_eur_hash
      end
    end
    context 'when the pair is not specified correctly' do
      it 'raises an error' do
        expect { ticker.get_info('abc') }.to raise_error ArgumentError
      end
    end
  end
end
