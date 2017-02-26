require "spec_helper"

describe "BtcTicker" do
  it "has a version number" do
    expect(BtcTicker::VERSION).not_to be nil
  end
end