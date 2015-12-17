# https://github.com/elastic/packetbeat/blob/master/etc/packetbeat.yml
# https://www.elastic.co/guide/en/beats/packetbeat/current/configuration.html
#
# capture interface traffic
default['packetbeat']['config']['interfaces']['device'] = 'any'
# default['packetbeat']['config']['interfaces']['snaplen'] = 1514
# default['packetbeat']['config']['interfaces']['type'] = 'af_packet'
# default['packetbeat']['config']['interfaces']['buffer_size_mb'] = 30

# default['packetbeat']['config']['shipper']['name'] = node['fqdn'] || node['host']
# default['packetbeat']['config']['shipper']['tags'] = []
# default['packetbeat']['config']['shipper']['ignore_outgoing'] = true
# default['packetbeat']['config']['shipper']['refresh_topology_freq'] = 10
# default['packetbeat']['config']['shipper']['topology_expire'] = 15

# capture service traffic
default['packetbeat']['config']['protocols'] = {}
# default['packetbeat']['config']['protocols']['http']['ports'] = %w(80)
# default['packetbeat']['config']['protocols']['http']['send_request'] = false
# default['packetbeat']['config']['protocols']['http']['send_response'] = false
# default['packetbeat']['config']['protocols']['http']['hide_keywords'] = %w(pass password passwd)
# default['packetbeat']['config']['protocols']['http']['send_headers'] = %w(User-Agent Cookie Set-Cookie)
# default['packetbeat']['config']['protocols']['http']['split_coookie'] = false
# default['packetbeat']['config']['protocols']['http']['real_ip_header'] = 'X-Forwarded-For'
# default['packetbeat']['config']['protocols']['http']['strip_authorisation'] = false
# default['packetbeat']['config']['protocols']['http']['send_headers'] = []
# default['packetbeat']['config']['protocols']['http']['send_all_headers'] = []
# default['packetbeat']['config']['protocols']['http']['include_body_for'] = [] # ['text/html']
#
# default['packetbeat']['config']['protocols']['mysql']['ports'] = %w(3306)
# default['packetbeat']['config']['protocols']['redis']['ports'] = %w(6379)
# default['packetbeat']['config']['protocols']['psql']['ports'] = %w(5432)

# default['packetbeat']['config']['protocols']['thrift']['ports'] = %w(9090)
# default['packetbeat']['config']['protocols']['thrift']['transport_type'] = 'socket'
# default['packetbeat']['config']['protocols']['thrift']['protocol_type'] = 'binary'
# default['packetbeat']['config']['protocols']['thrift']['idl_files'] = %w(tutorial.thrift shared.thrift)
# default['packetbeat']['config']['protocols']['thrift']['string_max_size'] = 200
# default['packetbeat']['config']['protocols']['thrift']['collection_max_size'] = 20
# default['packetbeat']['config']['protocols']['thrift']['capture_reply'] = true
# default['packetbeat']['config']['protocols']['thrift']['obfuscate_strings'] = true
# default['packetbeat']['config']['protocols']['thrift']['drop_after_n_struct_fields'] = 100

# default['packetbeat']['config']['protocols']['memcache']['ports'] = %w(11211)

# default['packetbeat']['config']['protocols']['dns']['ports'] = %w(53)
# default['packetbeat']['config']['protocols']['dns']['send_request'] = false
# default['packetbeat']['config']['protocols']['dns']['send_response'] = false

# default['packetbeat']['config']['protocols']['mongo']['ports'] = %w(27017)
# default['packetbeat']['config']['protocols']['mongo']['max_docs'] = 10
# default['packetbeat']['config']['protocols']['mongo']['max_doc_length'] = 5000
# default['packetbeat']['config']['protocols']['mongo']['send_request'] = false
# default['packetbeat']['config']['protocols']['mongo']['send_response'] = false

default['packetbeat']['config']['output'] = {}

# elasticsearch host info
# default['packetbeat']['config']['output']['elasticsearch']['hosts'] = []
# host and port attributes are deprecated
# and will be removed on next release
# default['packetbeat']['config']['output']['elasticsearch']['host'] = '127.0.0.1'
# default['packetbeat']['config']['output']['elasticsearch']['port'] = 9_200
# default['packetbeat']['config']['output']['elasticsearch']['save_topology'] = true
# default['packetbeat']['config']['output']['elasticsearch']['max_retries'] = 3
# default['packetbeat']['config']['output']['elasticsearch']['bulk_max_size'] = 1000
# default['packetbeat']['config']['output']['elasticsearch']['flush_interval'] = nil
# default['packetbeat']['config']['output']['elasticsearch']['protocol'] = 'http'
# default['packetbeat']['config']['output']['elasticsearch']['username'] = nil
# default['packetbeat']['config']['output']['elasticsearch']['password'] = nil
# default['packetbeat']['config']['output']['elasticsearch']['topology_expire'] = 15
# default['packetbeat']['config']['output']['elasticsearch']['index'] = '[packetbeat-]YYYY.MM.DD'
# default['packetbeat']['config']['output']['elasticsearch']['path'] = '/elasticsearch'

# default['packetbeat']['config']['output']['logstash']['enabled'] = false
# default['packetbeat']['config']['output']['logstash']['hosts'] = []
# default['packetbeat']['config']['output']['logstash']['loadbalance'] = true
# default['packetbeat']['config']['output']['logstash']['save_topology'] = true
# default['packetbeat']['config']['output']['logstash']['index'] = 'packetbeat'

# default['packetbeat']['config']['output']['file']['path'] = '/tmp/packetbeat'
# default['packetbeat']['config']['output']['file']['filename'] = 'packetbeat'
# default['packetbeat']['config']['output']['file']['rotate_every_kb'] = 1_000
# default['packetbeat']['config']['output']['file']['number_of_files'] = 7

# default['packetbeat']['config']['procs']['enabled'] = false
# default['packetbeat']['config']['procs']['enabled']['monitored'] = [{'process' => 'mysqld', 'cmdline_grep' => 'mysqld]
