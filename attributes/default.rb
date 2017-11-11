default['packetbeat']['version'] = '5.2.2'
default['packetbeat']['disable_service'] = false
default['packetbeat']['packages'] = value_for_platform_family(
  'debian' => %w(libpcap0.8),
  %w(rhel fedora) => %w(libpcap),
  'default' => []
)
default['packetbeat']['notify_restart'] = true
default['packetbeat']['conf_dir'] = '/etc/packetbeat'
default['packetbeat']['conf_file'] = ::File.join(node['packetbeat']['conf_dir'], 'packetbeat.yml')

default['packetbeat']['apt']['options'] = "-o Dpkg::Options::='--force-confnew'"
