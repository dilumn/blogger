# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blogger/version'

Gem::Specification.new do |spec|
  spec.name          = "bloggerapi"
  spec.version       = Blogger::VERSION
  spec.authors       = ["Dilum Navanjana"]
  spec.email         = ["dilumnavanjana@gmail.com"]

  spec.summary       = %q{Blogger API implementation for Ruby}
  spec.description   = %q{Blogger API implementation for Ruby}
  spec.homepage      = "https://github.com/dilumn/blogger"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
