# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/homebrew/version'

Gem::Specification.new do |spec|
  spec.name        = 'itamae-plugin-recipe-homebrew'
  spec.version     = Itamae::Plugin::Recipe::Homebrew::VERSION
  spec.licenses    = ['MIT']
  spec.summary     = 'Itamae/MItamae plugin to install Homebrew package'
  spec.description = 'Itamae/MItamae plugin to install Homebrew package'
  spec.authors     = ['nyuyuyu']
  spec.email       = ['127820811+nyuyuyu@users.noreply.github.com']
  spec.homepage    = 'https://github.com/nyuyuyu/itamae-plugin-recipe-homebrew'
  spec.files       = `git ls-files -z ./lib/*`.split("\x0")
  spec.files      += %w[README.md LICENSE]

  spec.add_runtime_dependency 'itamae'

  spec.add_development_dependency 'bundler', '>= 1.3'
  spec.add_development_dependency 'rubocop'
end
