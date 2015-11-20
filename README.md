packetbeat Cookbook
================

[![Build Status](https://travis-ci.org/vkhatri/chef-packetbeat.svg?branch=master)](https://travis-ci.org/vkhatri/chef-packetbeat)

This is a [Chef] cookbook to manage [PacketBeat].


>> For Production environment, always prefer the [most recent release](https://supermarket.chef.io/cookbooks/filebeat).

## Repository

https://github.com/vkhatri/chef-packetbeat


## Supported OS

This cookbook was tested on Amazon & Ubuntu Linux and expected to work on other RHEL platforms.


## Recipes

- `packetbeat::default` - default recipe (use it for run_list)

- `packetbeat::install` - install packetbeat

- `packetbeat::config` - configure packetbeat


## Core Attributes


* `default['packetbeat']['version']` (default: `1.0.0-rc2`): packetbeat version

* `default['packetbeat']['package_url']` (default: `calculated`): package download url

* `default['packetbeat']['packages']` (default: `calculated`): package dependencies

* `default['packetbeat']['conf_dir']` (default: `/etc/packetbeat`): packetbeat yaml configuration file directory

* `default['packetbeat']['conf_file']` (default: `/etc/packetbeat/packetbeat.yml`): packetbeat configuration file

* `default['packetbeat']['notify_restart']` (default: `true`): whether to restart packetbeat service on configuration file change

* `default['packetbeat']['disable_service']` (default: `false`): whether to stop and disable packetbeat service


## Configuration File packetbeat.yml Attributes

* `default['packetbeat']['config']['device']` (default: `any`): packetbeat interface device name

* `default['packetbeat']['config']['protocols']` (default: `{}`): packetbeat services to capture packets

* `default['packetbeat']['config']['output']['elasticsearch']['enabled']` (default: `true`):

* `default['packetbeat']['config']['output']['elasticsearch']['host']` (default: `127.0.0.1`):

* `default['packetbeat']['config']['output']['elasticsearch']['port']` (default: `9200`):

* `default['packetbeat']['config']['output']['elasticsearch']['save_topology']` (default: `false`):

* `default['packetbeat']['config']['output']['redis']['enabled']` (default: `false`):

* `default['packetbeat']['config']['output']['redis']['host']` (default: `127.0.0.1`):

* `default['packetbeat']['config']['output']['redis']['port']` (default: `6379`):

* `default['packetbeat']['config']['output']['redis']['save_topology']` (default: `false`):

* `default['packetbeat']['config']['output']['file']['enabled']` (default: `false`):

* `default['packetbeat']['config']['output']['file']['path']` (default: `/tmp/packetbeat`):

* `default['packetbeat']['config']['output']['file']['filename']` (default: `packetbeat`):

* `default['packetbeat']['config']['output']['file']['rotate_every_kb']` (default: `10240`):

* `default['packetbeat']['config']['output']['file']['number_of_files']` (default: `7`):


For more attribute info, visit below links:

https://github.com/elastic/packetbeat/blob/master/etc/packetbeat.yml


## Contributing

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests (`rake & rake knife`), ensuring they all pass
6. Write new resource/attribute description to `README.md`
7. Write description about changes to PR
8. Submit a Pull Request using Github


## Copyright & License

Authors:: Virender Khatri and [Contributors]

<pre>
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
</pre>


[Chef]: https://www.chef.io/
[PacketBeat]: http://packetbeat.com
[Contributors]: https://github.com/vkhatri/chef-packetbeat/graphs/contributors
