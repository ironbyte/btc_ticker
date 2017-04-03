require "spec_helper"

describe "BtcTicker::Bitstamp::API::Ticker" do
  context "Given the input parameter - btc_usd" do
    describe "#get_json" do
      let(:ticker) { BtcTicker::Bitstamp::API::Ticker.new({:pair => "btc_usd"}) }

      it "must return the parsed btc_usd json data as an Hash object" do
        expect(ticker.get_json).to be_an_instance_of Hash
      end

      it "must not be empty" do
        expect(ticker.get_json).to_not be_nil
      end
    end
  end

  context "Given the input parameter - btc_eur" do
    describe "#get_json" do
      let(:ticker) { BtcTicker::Bitstamp::API::Ticker.new({:pair => "btc_eur"}) }

      it "must return the parsed btc_eur json data as an Hash object" do
        expect(ticker.get_json).to be_an_instance_of Hash
      end

      it "must not be empty" do
        expect(ticker.get_json).to_not be_nil
      end
    end
  end
end