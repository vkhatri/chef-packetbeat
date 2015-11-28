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
  # apt repository configuration
  apt_repository 'beats' do
    uri node['packetbeat']['apt']['uri']
    components node['packetbeat']['apt']['components']
    key node['packetbeat']['apt']['key']
    action node['packetbeat']['apt']['action']
  end
when 'rhel'
  # yum repository configuration
  yum_repository 'beats' do
    description node['packetbeat']['yum']['description']
    baseurl node['packetbeat']['yum']['baseurl']
    gpgcheck node['packetbeat']['yum']['gpgcheck']
    gpgkey node['packetbeat']['yum']['gpgkey']
    enabled node['packetbeat']['yum']['enabled']
    action node['packetbeat']['yum']['action']
  end
end

package 'packetbeat' do
  version node['platform_family'] == 'rhel' ? node['packetbeat']['version'] + '-1' : node['packetbeat']['version']
end
