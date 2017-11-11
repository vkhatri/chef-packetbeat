default['packetbeat']['version'] = '5.2.2'
default['packetbeat']['release'] = '1'
default['packetbeat']['ignore_version'] = false
default['packetbeat']['disable_service'] = false
default['packetbeat']['setup_repo'] = true
default['packetbeat']['notify_restart'] = true
default['packetbeat']['conf_dir'] = '/etc/packetbeat'
default['packetbeat']['conf_file'] = ::File.join(node['packetbeat']['conf_dir'], 'packetbeat.yml')

default['packetbeat']['service']['name'] = 'packetbeat'
default['packetbeat']['service']['retries'] = 0
default['packetbeat']['service']['retry_delay'] = 2

default['packetbeat']['packages'] = value_for_platform_family(
  'debian' => %w(libpcap0.8),
  %w(amazon rhel fedora) => %w(libpcap),
  'default' => []
)

default['packetbeat']['apt']['options'] = "-o Dpkg::Options::='--force-confnew'"
