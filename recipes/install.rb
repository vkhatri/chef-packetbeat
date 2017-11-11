#
# Cookbook Name:: packetbeat
# Recipe:: install
#
# Copyright 2015, Virender Khatri
#

version_string = %w[fedora rhel amazon].include?(node['platform_family']) ? "#{node['packetbeat']['version']}-#{node['packetbeat']['release']}" : node['packetbeat']['version']

node['packetbeat']['packages'].each do |p|
  package p
end

case node['platform_family']
when 'debian'
  include_recipe 'elastic_beats_repo::apt' if node['packetbeat']['setup_repo']

  unless node['packetbeat']['ignore_version'] # ~FC023
    apt_preference 'packetbeat' do
      pin          "version #{node['packetbeat']['version']}"
      pin_priority '700'
    end
  end
when 'fedora', 'amazon', 'rhel'
  include_recipe 'elastic_beats_repo::yum' if node['packetbeat']['setup_repo']

  unless node['packetbeat']['ignore_version'] # ~FC023
    yum_version_lock 'packetbeat' do
      version node['packetbeat']['version']
      release node['packetbeat']['release']
      action :update
    end
  end
else
  raise "platform_family #{node['platform_family']} not supported"
end

package 'packetbeat' do # ~FC009
  version version_string unless node['packetbeat']['ignore_version']
  options node['packetbeat']['apt']['options'] if node['packetbeat']['apt']['options'] && node['platform_family'] == 'debian'
  notifies :restart, "service[#{node['packetbeat']['service']['name']}]" if node['packetbeat']['notify_restart'] && !node['packetbeat']['disable_service']
  if %w[fedora rhel amazon].include?(node['platform_family'])
    flush_cache(:before => true)
    allow_downgrade true
  end
end
