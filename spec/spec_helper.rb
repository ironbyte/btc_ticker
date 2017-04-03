require "bundler/setup"
require "btc_ticker"

require 'webmock/rspec'

WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:each) do
    stub_request(:get, "https://www.bitstamp.net/api/v2/ticker/btcusd/").to_return(File.new("spec/responses/ticker_btcusd_response.http"))
    stub_request(:get, "https://www.bitstamp.net/api/v2/ticker/btceur/").to_return(File.new("spec/responses/ticker_btceur_response.http"))
  end
end
