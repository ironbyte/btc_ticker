require 'rest-client'

module BTCTicker
  class HTTPClient
    def self.get_http_response(uri)
      begin
        response = RestClient.get(uri, :user_agent => 'ruby-btc_ticker')
      rescue RestClient::ExceptionWithResponse => err
        raise Errors::HTTPError, "#{err.http_code}"
      else
        response
      end
    end
  end
end
