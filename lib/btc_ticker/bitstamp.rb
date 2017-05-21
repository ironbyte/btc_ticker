require 'json'

module BTCTicker
  module Bitstamp
    APIBASE = 'https://www.bitstamp.net/api/v2'

    class Ticker
      def self.get_info(pair)
        case pair
        when :btc_usd
          json_response(pair)
        when :btc_eur
          json_response(pair)
        else
          raise ArgumentError, "Please specify either :btc_usd or :btc_eur"
        end
      end

      private
      def self.json_response(pair)
        p = pair.id2name.gsub('_', '')
        JSON.parse(HTTPClient.get_http_response("#{APIBASE}/ticker/#{p}/").body)
      end
    end
  end
end
