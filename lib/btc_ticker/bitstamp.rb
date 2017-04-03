require 'httparty'

module BtcTicker
  module Bitstamp
    module API
      class Ticker
        include HTTParty
        base_uri 'https://www.bitstamp.net/api'

        def initialize(params = {})
          @pair = params[:pair]
        end

        def get_json
          if @pair == "btc_usd"
            @parsed_json_response = get_http_response("/v2/ticker/btcusd/")
          elsif @pair == "btc_eur"
            @parsed_json_response = get_http_response("/v2/ticker/btceur/") if @pair == "btc_eur"
          end
        end

        def get_http_response(uri)
          response = self.class.get(uri)
          if response.success?
            response
          else
            raise response.response
          end
        end
      end
    end
  end
end