#
# Cookbook:: testing_windows
# Recipe:: test_updater
#
# Copyright:: 2022, The Authors, All Rights Reserved.
# Cookbook:: testing_windows
#
# Copyright:: 2022, The Authors, All Rights Reserved.

node.save

chef_client_updater 'Upgrade Chef Infra Client to version' do
  version '17.10.3'
end

node.default['ae_goagent']['applicationname'] = node['ec2']['tags']['Name'].split('-')[-1][1, 4].upcase
node.default['ae_goagent']['applicationservice'] = node['ec2']['tags']['Role'].split('_')[-1].upcase
node.default['ae_goagent']['environment'] = node['ec2']['tags']['Environment'].upcase
