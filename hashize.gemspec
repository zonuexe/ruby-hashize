# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hashize/version'

Gem::Specification.new do |spec|
  spec.name          = "hashize"
  spec.version       = Hashize::VERSION
  spec.authors       = ["USAMI Kenta"]
  spec.email         = ["tadsan@zonu.me"]
  spec.description   = %q{Refinements classes of ruby's standard library as Hash}
  spec.summary       = %q{Ruby has strict policy, and there are many class which do not have to_hash in Standard Library. Hashize provides Hash-like methods for some class in small scope by refinements.}
  spec.homepage      = 'http://dt.zonu.me/'
  spec.licenses      = %w(LGPLv3 NYSL)

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
