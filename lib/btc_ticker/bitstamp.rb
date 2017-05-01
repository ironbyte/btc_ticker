require 'httparty'

module BTCTicker
  module Bitstamp
    class Ticker
      include HTTParty

      base_uri 'https://www.bitstamp.net/api'
      headers({"User-Agent"=>'BTCTicker-Ruby'})

      def self.get_info(pair)
        case pair
        when :btc_usd
          get_http_response('/v2/ticker/btcusd/')
        when :btc_eur
          get_http_response('/v2/ticker/btceur/')
        else
          raise ArgumentError, "Invalid pair. Please specify either :btc_usd or :btc_eur"
        end
      end

      private

      def self.get_http_response(uri)
        response = get(uri)
        raise HTTPError, 'response.code.to_s' unless response.code == 200
        response
      end
    end
  end
end