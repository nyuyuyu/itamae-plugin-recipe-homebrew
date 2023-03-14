if node['homebrew']['install_rosetta']
  execute 'Install Rosetta2' do
    user 'root'
    command 'sudo softwareupdate --install-rosetta --agree-to-license'
    only_if 'system_profiler SPHardwareDataType | grep -q Chip'
    not_if 'test -e /Library/Apple/usr/libexec/oah'
  end
else
  msg = 'Skip install Rosetta2'
  if RUBY_ENGINE == 'mruby'
    MItamae.logger.info(msg)
  else
    Itamae.logger.info(msg)
  end
end
