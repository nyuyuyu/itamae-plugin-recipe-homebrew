# coding: utf-8
# frozen_string_literal: true

include_recipe 'homebrew::setup'
include_recipe 'homebrew::deps'
include_recipe 'homebrew::install'
include_recipe 'homebrew::update'
include_recipe 'homebrew::upgrade'
include_recipe 'homebrew::tap'
include_recipe 'homebrew::package'
include_recipe 'homebrew::cask'
include_recipe 'homebrew::link'
include_recipe 'homebrew::service'
