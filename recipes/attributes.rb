#
# Cookbook Name:: packetbeat
# Recipe:: attributes
#
# Copyright 2015, Virender Khatri
#

node.default['elastic_beats_repo']['version'] = node['packetbeat']['version']
