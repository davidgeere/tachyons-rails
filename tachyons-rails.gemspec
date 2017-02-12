# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tachyons/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "tachyons-rails"
  spec.version       = Tachyons::Rails::VERSION
  spec.authors       = ["Tachyons"]
  spec.description   = %q{Tachyons on Sass}
  spec.summary       = %q{Tachyons on Sass}
  spec.homepage      = "http://tachyons.io/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sass", [">= 3.3.0", "< 3.5"]
  spec.add_dependency "railties", [">= 3.1.0"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rails"
  spec.add_development_dependency "rspec", "~> 3.2"
end
