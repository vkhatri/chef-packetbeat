name 'packetbeat'
maintainer 'Virender Khatri'
maintainer_email 'vir.khatri@gmail.com'
license 'Apache-2.0'
description 'Installs/Configures Elastic Packetbeat'
long_description 'Installs/Configures Elastic Packetbeat'
version '1.0.0'
source_url 'https://github.com/vkhatri/chef-packetbeat' if respond_to?(:source_url)
issues_url 'https://github.com/vkhatri/chef-packetbeat/issues' if respond_to?(:issues_url)
chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'elastic_beats_repo'
depends 'yum-plugin-versionlock', '>= 0.1.2'

%w[debian ubuntu centos amazon redhat fedora].each do |os|
  supports os
end
