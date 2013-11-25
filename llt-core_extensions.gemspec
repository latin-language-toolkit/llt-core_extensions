# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'llt/core_extensions/version'

Gem::Specification.new do |spec|
  spec.name          = "llt-core_extensions"
  spec.version       = LLT::CoreExtensions::VERSION
  spec.authors       = ["LFDM"]
  spec.email         = ["1986gh@gmail.com"]
  spec.description   = %q{LLT Core Extensions}
  spec.summary       = %q{LLT Core Extensions}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov", "~> 0.7"
end
