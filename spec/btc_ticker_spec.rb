require "spec_helper"

describe "BtcTicker::Bitstamp::API::Ticker" do

  describe "#get_json" do
    let(:ticker_btcusd) { BtcTicker::Bitstamp::API::Ticker.new({:pair => "btc_usd"}) }
    let(:ticker_btceur) { BtcTicker::Bitstamp::API::Ticker.new({:pair => "btc_eur"}) }

    context "Given the input parameter - btc_usd" do
      it "must return the parsed btc_usd json data as an Hash object" do
        expect(ticker_btcusd.get_json).to be_an_instance_of Hash
      end

      it "must not be empty" do
        expect(ticker_btcusd.get_json).to_not be_nil
      end
    end

    context "Given the input parameter - btc_eur" do
      it "must return the parsed btc_eur json data as an Hash object" do
        expect(ticker_btceur.get_json).to be_an_instance_of Hash
      end

      it "must not be empty" do
        expect(ticker_btceur.get_json).to_not be_nil
      end
    end
  end
end