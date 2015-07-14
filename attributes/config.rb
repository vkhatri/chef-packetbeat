# https://github.com/elastic/packetbeat/blob/master/etc/packetbeat.yml
#
# capture interface traffic
default['packetbeat']['config']['device'] = 'any'

# default['packetbeat']['config']['shipper']['name'] = node['fqdn'] || node['host']
# default['packetbeat']['config']['shipper']['tags'] = []
# default['packetbeat']['config']['shipper']['ignore_outgoing'] = true

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

# default['packetbeat']['config']['procs']['enabled'] = false
# default['packetbeat']['config']['procs']['enabled']['monitored'] = [{'process' => 'mysqld', 'cmdline_grep' => 'mysqld]
