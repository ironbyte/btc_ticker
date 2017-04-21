require 'httparty'

module BTCTicker
  module Bitstamp

    APPLICATION_NAME = 'BTCTicker-Ruby'

    class Ticker
      include HTTParty

      BTCUSD_URI = "/v2/ticker/btcusd/"
      BTCEUR_URI = "/v2/ticker/btceur/"

      base_uri 'https://www.bitstamp.net/api'
      headers({"User-Agent"=>APPLICATION_NAME})

      def self.get_info(pair)
        ticker_cache = {}
        case pair
        when :btc_usd
          ticker_cache = get_http_response(BTCUSD_URI)
        when :btc_eur
          ticker_cache = get_http_response(BTCEUR_URI)
        else
          raise ArgumentError, "Invalid pair. Please specify either :btc_usd or :btc_eur"
        end
      end

      private

      def self.get_http_response(uri)
        response = get(uri)
        if response.success?
          response
        else
          raise response.response
        end
      end
    end
  end
end