default['packetbeat']['version'] = '1.0.0~Beta1'

default['packetbeat']['package_url'] = value_for_platform_family(
  'debian' => "https://download.elasticsearch.org/beats/packetbeat/packetbeat_#{node['packetbeat']['version']}_amd64.deb",
  %w(rhel fedora) => "https://download.elasticsearch.org/beats/packetbeat/packetbeat-#{node['packetbeat']['version']}-x86_64.rpm"
)

default['packetbeat']['packages'] = value_for_platform_family(
  'debian' => %w(libpcap0.8),
  %w(rhel fedora) => %w(libpcap)
)

default['packetbeat']['notify_restart'] = true

default['packetbeat']['conf_dir'] = '/etc/packetbeat'
default['packetbeat']['conf_file'] = ::File.join(node['packetbeat']['conf_dir'], 'packetbeat.yml')
