# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pharma/version'

Gem::Specification.new do |spec|
  spec.name          = "pharma"
  spec.version       = Pharma::VERSION
  spec.authors       = ["gatorjuice"]
  spec.email         = ["gatorjuice@gmail.com"]

  spec.summary       = %q{Ruby Wrapper for Drug Information}
  spec.description   = %q{pharma will return to you relevant drug information about any drug you'd like.}
  spec.homepage      = "https://github.com/gatorjuice/pharma"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "unirest", "1.1.2"
end
