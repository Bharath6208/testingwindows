include_recipe 'ec2-tags-ohai-plugin'

ohai 'ohai-reload-ec2_tags' do
  action :reload
end

ruby_block 'put-ec2-tags' do
  block do
    # These variables will now have the new values

    puts node['ec2']['tags']
  end
end

node.default['ae_goagent']['applicationname'] = node['ec2']['tags']['Name'].split('-')[-1][1, 4].upcase
node.default['ae_goagent']['applicationservice'] = node['ec2']['tags']['Role'].split('-')[-1].upcase
node.default['ae_goagent']['environment'] = node['ec2']['tags']['Environment'].upcase
