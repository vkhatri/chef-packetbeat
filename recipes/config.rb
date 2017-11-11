#
# Cookbook Name:: packetbeat
# Recipe:: config
#
# Copyright 2015, Virender Khatri
#

file node['packetbeat']['conf_file'] do
  content JSON.parse(node['packetbeat']['config'].to_json).to_yaml.lines.to_a[1..-1].join
  notifies :restart, 'service[packetbeat]' if node['packetbeat']['notify_restart'] && !node['packetbeat']['disable_service']
end

service_action = node['packetbeat']['disable_service'] ? [:disable, :stop] : [:enable, :start]

service 'packetbeat' do
  retries node['packetbeat']['service']['retries']
  retry_delay node['packetbeat']['service']['retry_delay']
  supports :status => true, :restart => true
  action service_action
end
