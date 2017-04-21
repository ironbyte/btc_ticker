# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'btc_ticker/version'

Gem::Specification.new do |spec|
  spec.name          = "btc_ticker"
  spec.version       = BTCTicker::VERSION
  spec.authors       = ["ironbyte"]
  spec.email         = ["illusivespectre@gmail.com"]

  spec.summary       = %q{BTCTicker v1.0.0}
  spec.description   = %q{A Ruby wrapper for the Bitstamp Ticker API}
  spec.homepage      = "https://github.com/ironbyte/btc_ticker"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = ["console"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 2.3"

  spec.add_runtime_dependency "httparty", "~> 0.14.0"
end
