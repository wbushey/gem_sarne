# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gem_sarne/version'

Gem::Specification.new do |spec|
  spec.name          = "gem_sarne"
  spec.version       = GemSarne::VERSION
  spec.authors       = ["Billy Reisinger"]
  spec.email         = ["billy.reisinger@govdelivery.com"]
  spec.summary       = %q{Gemes Sarne}
  spec.description   = %q{Death Stare}
  spec.homepage      = "http://github.com/govdelivery/gem_sarne"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_dependency "launchy"
end
