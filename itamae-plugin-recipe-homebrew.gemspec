# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/homebrew/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-recipe-homebrew"
  spec.version       = Itamae::Plugin::Recipe::Homebrew::VERSION
  spec.authors       = ["nyuyuyu"]
  spec.email         = ["127820811+nyuyuyu@users.noreply.github.com"]
  spec.summary       = %q{Itamae/MItamae plugin to install Homebrew packages}
  spec.description   = %q{Itamae/MItamae plugin to install Homebrew packages}
  spec.homepage      = "https://github.com/nyuyuyu/itamae-plugin-recipe-homebrew"
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "itamae"

  spec.add_development_dependency "bundler", ">= 1.3"
  spec.add_development_dependency "rubocop"
end
