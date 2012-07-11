# -*- encoding: utf-8 -*-
require File.expand_path('../lib/flashing_rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Caius Durling", "Steve Smith"]
  gem.email         = ["support@brightbox.co.uk"]
  gem.description   = %q{Adds a method to your views to output all flash messages}
  gem.summary       = %q{Flash message helper for Rails}

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "flashing_rails"
  gem.require_paths = ["lib"]
  gem.version       = FlashingRails::VERSION
end
