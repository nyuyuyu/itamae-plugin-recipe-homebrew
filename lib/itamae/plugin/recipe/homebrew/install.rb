# coding: utf-8
# frozen_string_literal: true

BREW_INSTALL_URL = 'https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh'
execute 'Install Homebrew' do
  command "bash -c \"$(curl -fsSL #{BREW_INSTALL_URL})\""
  not_if 'test $(which brew)'
end
