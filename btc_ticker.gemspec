# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'btc_ticker/version'

Gem::Specification.new do |spec|
  spec.name          = "btc_ticker"
  spec.version       = BTCTicker::VERSION
  spec.authors       = ["ironbyte"]
  spec.email         = ["illusivespectre@gmail.com"]

  spec.summary       = %q{A Ruby wrapper for the Bitstamp Ticker API}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/ironbyte/btc_ticker"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.0.0'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = ["console"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rest-client", '~> 2.0'

  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 3.0"
end
