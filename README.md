# BTCTicker  v1.0.0

[![Gem Version](https://badge.fury.io/rb/btc_ticker.svg)](https://badge.fury.io/rb/btc_ticker)

A Ruby wrapper for the Bitstamp Ticker API.

#### Bitstamp Ticker API response
Attribute   | Description
------------|----------------------------------------------------
last        | Last BTC price.
high        | Last 24 hours price high.
low         | Last 24 hours price low.
vwap        | Last 24 hours volume weighted average price.
volume      | Last 24 hours volume.
bid         | Highest buy order.
ask         | Lowest sell order.
timestamp   | Unix timestamp date and time.
open        | First price of the day.
----------------------------------------------------------------

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'btc_ticker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install btc_ticker

## Usage

```ruby
require 'btc_ticker'

#Get current BTC ticker (Hash object) by currency pair (Only :btc_usd and :btc_eur pairs are supported)
ticker = BTCTicker::Bitstamp::Ticker.get_info(:btc_usd)

#Print a list of the keys
p ticker.keys #=> ["high", "last", "timestamp", "bid", "vwap", "volume", "low", "ask", "open"]

current_btc_usd_price = ticker["last"]
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

