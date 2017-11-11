#
# Cookbook Name:: packetbeat
# Recipe:: install
#
# Copyright 2015, Virender Khatri
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

node['packetbeat']['packages'].each do |p|
  package p
end

case node['platform_family']
when 'debian'
  include_recipe 'elastic_beats_repo::apt'
when 'rhel', 'amazon'
  include_recipe 'elastic_beats_repo::yum'
else
  raise "platform_family #{node['platform_family']} not supported"
end

package 'packetbeat' do
  version %w[rhel amazon].include?(node['platform_family']) ? node['packetbeat']['version'] + '-1' : node['packetbeat']['version']
  options node['packetbeat']['apt']['options'] if node['packetbeat']['apt']['options'] && node['platform_family'] == 'debian'
end
