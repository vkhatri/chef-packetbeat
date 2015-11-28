default['packetbeat']['version'] = '1.0.0'
default['packetbeat']['disable_service'] = false
default['packetbeat']['packages'] = value_for_platform_family(
  'debian' => %w(libpcap0.8),
  %w(rhel fedora) => %w(libpcap),
  'default' => []
)
default['packetbeat']['notify_restart'] = true
default['packetbeat']['conf_dir'] = '/etc/packetbeat'
default['packetbeat']['conf_file'] = ::File.join(node['packetbeat']['conf_dir'], 'packetbeat.yml')

default['packetbeat']['yum']['baseurl'] = 'https://packages.elastic.co/beats/yum/el/$basearch'
default['packetbeat']['yum']['description'] = 'Elastic Beats Repository'
default['packetbeat']['yum']['gpgcheck'] = true
default['packetbeat']['yum']['enabled'] = true
default['packetbeat']['yum']['gpgkey'] = 'https://packages.elasticsearch.org/GPG-KEY-elasticsearch'
default['packetbeat']['yum']['action'] = :create

default['packetbeat']['apt']['uri'] = 'https://packages.elastic.co/beats/apt'
default['packetbeat']['apt']['description'] = 'Elastic Beats Repository'
default['packetbeat']['apt']['components'] = %w(stable main)
default['packetbeat']['apt']['action'] = :add
default['packetbeat']['apt']['key'] = 'https://packages.elasticsearch.org/GPG-KEY-elasticsearch'
