# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simply_cleansable/version'

Gem::Specification.new do |spec|
  spec.name          = "simply_cleansable"
  spec.version       = SimplyCleansable::VERSION
  spec.authors       = ["David Dawson"]
  spec.email         = ["daws23@gmail.com"]
  spec.description   = %q{Makes it easy to cleanse attributes of an object, ActiveRecord model or otherwise, in a declarative fashion.}
  spec.summary       = %q{Provides a framework for cleaning up the attributes on an object in a declarative fashion, along with implementations of several common requirements. Integrates automatically with ActiveRecord `before_validation` hooks, but works with plain old ruby objects as well.}
  spec.homepage      = "http://github.com/daws/simply_cleansable"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
