packetbeat Cookbook
================

[![Cookbook](http://img.shields.io/badge/cookbook-v0.2.2-green.svg)](https://github.com/vkhatri/chef-packetbeat)[![Build Status](https://travis-ci.org/vkhatri/chef-packetbeat.svg?branch=master)](https://travis-ci.org/vkhatri/chef-packetbeat)

This is a [Chef] cookbook to manage [PacketBeat].


>> For Production environment, always prefer the [most recent release](https://supermarket.chef.io/cookbooks/packetbeat).


## Most Recent Release

```
cookbook 'packetbeat', '~> 0.2.2'
```

## From Git

```
cookbook 'packetbeat', github: 'vkhatri/chef-packetbeat'
```

## Repository

https://github.com/vkhatri/chef-packetbeat


## Supported OS

This cookbook was tested on Amazon & Ubuntu Linux and expected to work on other RHEL platforms.


## Recipes

- `packetbeat::default` - default recipe (use it for run_list)

- `packetbeat::install` - install packetbeat

- `packetbeat::config` - configure packetbeat


## How to Add Packetbeat Output via Node Attribute

### ElasticSearch Output

```
  "default_attributes": {
    "packetbeat": {
      "config": {
        "output": {
          "elasticsearch": {
		    "enabled": true,
			"hosts": ["127.0.0.1:9200"],
			"save_topology": false,
			"max_retries": 3,
			"bulk_max_size": 1000,
			"flush_interval": null,
			"protocol": "http",
			"username": null,
			"password": null,
			"index": "packetbeat",
			"path": "/elasticsearch"
          }
        }
      }
    }
  }

```


### Logstash Output

```
  "default_attributes": {
    "packetbeat": {
      "config": {
        "output": {
          "logstash": {
			"enabled": true,
			"hosts": ["127.0.0.1:5000"],
			"loadbalance": true,
			"save_topology": false,
			"index": "packetbeat"
          }
        }
      }
    }
  }

```

### File Output

```
  "default_attributes": {
    "packetbeat": {
      "config": {
        "output": {
          "file": {
			"enabled": true,
			"path": "/tmp/packetbeat",
			"filename": "packetbeat",
			"rotate_every_kb": 1000,
			"number_of_files": 7
          }
        }
      }
    }
  }

```


## Core Attributes

* `default['packetbeat']['version']` (default: `1.2.3`): packetbeat version

* `default['packetbeat']['packages']` (default: `calculated`): package dependencies

* `default['packetbeat']['conf_dir']` (default: `/etc/packetbeat`): packetbeat yaml configuration file directory

* `default['packetbeat']['conf_file']` (default: `/etc/packetbeat/packetbeat.yml`): packetbeat configuration file

* `default['packetbeat']['notify_restart']` (default: `true`): whether to restart packetbeat service on configuration file change

* `default['packetbeat']['disable_service']` (default: `false`): whether to stop and disable packetbeat service


## Configuration File packetbeat.yml Attributes

* `default['packetbeat']['config']['device']` (default: `any`): packetbeat interface device name

* `default['packetbeat']['config']['protocols']` (default: `{}`): packetbeat services to capture packets

* `default['packetbeat']['config']['output']` (default: `{}`): packetbeat output configuration attributes

For more attribute info, visit below links:

https://github.com/elastic/packetbeat/blob/master/etc/packetbeat.yml

## Packetbeat YUM/APT Repository Attributes

* `default['packetbeat']['yum']['description']` (default: ``): beats yum reporitory attribute

* `default['packetbeat']['yum']['gpgcheck']` (default: `true`): beats yum reporitory attribute

* `default['packetbeat']['yum']['enabled']` (default: `true`): beats yum reporitory attribute

* `default['packetbeat']['yum']['baseurl']` (default: `https://packages.elastic.co/beats/yum/el/$basearch`): beatsyum reporitory attribute

* `default['packetbeat']['yum']['gpgkey']` (default: `https://packages.elasticsearch.org/GPG-KEY-elasticsearch`): beats yum reporitory attribute

* `default['packetbeat']['yum']['metadata_expire']` (default: `3h`): beats yum reporitory attribute

* `default['packetbeat']['yum']['action']` (default: `:create`): beats yum reporitory attribute


* `default['packetbeat']['apt']['description']` (default: `calculated`): beats apt reporitory attribute

* `default['packetbeat']['apt']['components']` (default: `['stable', 'main']`): beats apt reporitory attribute

* `default['packetbeat']['apt']['uri']` (default: `https://packages.elastic.co/beats/apt`): beats apt reporitory attribute

* `default['packetbeat']['apt']['key']` (default: `http://packages.elasticsearch.org/GPG-KEY-elasticsearch`): beats apt reporitory attribute

* `default['packetbeat']['apt']['action']` (default: `:add`): packetbeat apt reporitory attribute


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
