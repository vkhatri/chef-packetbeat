require 'spec_helper'

describe 'packetbeat::default' do
  shared_examples_for 'packetbeat' do
    context 'all_platforms' do
      %w(install config).each do |r|
        it "include recipe packetbeat::#{r}" do
          expect(chef_run).to include_recipe("packetbeat::#{r}")
        end
      end

      it 'install packetbeat package' do
        expect(chef_run).to install_package('packetbeat')
      end

      it 'configure /etc/packetbeat/packetbeat.yml' do
        expect(chef_run).to create_file('/etc/packetbeat/packetbeat.yml')
      end

      it 'enable packetbeat service' do
        expect(chef_run).to enable_service('packetbeat')
        expect(chef_run).to start_service('packetbeat')
      end
    end
  end

  context 'rhel' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'centos', version: '6.4') do |node|
        node.automatic['platform_family'] = 'rhel'
      end.converge(described_recipe)
    end

    it 'adds beats yum repository' do
      expect(chef_run).to create_yum_repository('beats')
    end

    it 'install package libpcap' do
      expect(chef_run).to install_package('libpcap')
    end

    include_examples 'packetbeat'
  end

  context 'ubuntu' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '12.04') do |node|
        node.automatic['platform_family'] = 'debian'
      end.converge(described_recipe)
    end

    it 'adds beats apt repository' do
      expect(chef_run).to add_apt_repository('beats')
    end

    it 'install package libpcap' do
      expect(chef_run).to install_package('libpcap0.8')
    end

    include_examples 'packetbeat'
  end
end
