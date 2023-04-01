# coding: utf-8
# frozen_string_literal: true

if node['homebrew']['update']
  execute 'Update Homebrew' do
    command 'brew update'
  end
end
