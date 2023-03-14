case node[:platform]
when 'darwin'
  include_recipe 'homebrew::deps::darwin'
when 'debian', 'ubuntu'
  include_recipe 'homebrew::deps::debian'
else
  raise NotImplementedError, "#{node[:platform]} is not supported yet"
end
