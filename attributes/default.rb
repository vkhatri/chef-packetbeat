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

# capture interface traffic
default['packetbeat']['config']['device'] = 'any'

# capture service traffic
default['packetbeat']['config']['protocols'] = {}
# default['packetbeat']['config']['protocols']['http']['ports'] = %w(80 8080)
# default['packetbeat']['config']['protocols']['mysql']['ports'] = %w(3306)
# default['packetbeat']['config']['protocols']['redis']['ports'] = %w(6379)
# default['packetbeat']['config']['protocols']['psql']['ports'] = %w(5432)
# default['packetbeat']['config']['protocols']['thrift']['ports'] = %w(9090)

# elasticsearch host info
default['packetbeat']['config']['output']['elasticsearch']['enabled'] = true
default['packetbeat']['config']['output']['elasticsearch']['host'] = '127.0.0.1'
default['packetbeat']['config']['output']['elasticsearch']['port'] = 9_200
default['packetbeat']['config']['output']['elasticsearch']['save_topology'] = true

default['packetbeat']['config']['output']['redis']['enabled'] = false
default['packetbeat']['config']['output']['redis']['host'] = '127.0.0.1'
default['packetbeat']['config']['output']['redis']['port'] = 6_379
default['packetbeat']['config']['output']['redis']['save_topology'] = true

default['packetbeat']['config']['output']['file']['enabled'] = false
default['packetbeat']['config']['output']['file']['path'] = '/tmp/packetbeat'
default['packetbeat']['config']['output']['file']['filename'] = 'packetbeat'
default['packetbeat']['config']['output']['file']['rotate_every_kb'] = 1_000
default['packetbeat']['config']['output']['file']['number_of_files'] = 7
