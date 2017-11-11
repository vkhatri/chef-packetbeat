#
# Cookbook Name:: packetbeat
# Recipe:: default
#
# Copyright 2015, Virender Khatri
#

include_recipe 'packetbeat::attributes'
if node['packetbeat']['version'].scan(/rc|beta|alpha/).empty?
  include_recipe 'yum-plugin-versionlock::default' if %w[fedora rhel amazon].include?(node['platform_family'])
  include_recipe 'packetbeat::install'
else
  include_recipe 'packetbeat::install_preview'
end
include_recipe 'packetbeat::config'
