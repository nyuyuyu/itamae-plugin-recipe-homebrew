# coding: utf-8
# frozen_string_literal: true

if node['homebrew']['upgrade']
  execute 'Upgrade Homebrew' do
    command 'brew upgrade'
  end
end
