# coding: utf-8
# frozen_string_literal: true

node[:platform] == 'darwin' && ENV['PATH'] += ':/opt/homebrew/bin'

unless node[:platform] == 'darwin'
  ['/home/linuxbrew', ENV['HOME'].to_s].each do |path|
    ENV['PATH'] += ":#{path}/.linuxbrew/bin"
  end
end

ENV['CI'] = 'yes'

if node['homebrew']['auto_update'].nil? || node['homebrew']['auto_update']
  ENV['HOMEBREW_NO_AUTO_UPDATE'] = nil
  ENV['HOMEBREW_AUTO_UPDATE_SECS'] = '86400'
else
  ENV['HOMEBREW_NO_AUTO_UPDATE'] = '1'
end
