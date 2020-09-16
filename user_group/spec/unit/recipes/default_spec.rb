#
# Cookbook:: user_group
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
require 'chefspec'

describe 'directory::create' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04').converge(described_recipe) }

  it 'Creates a directory with the default action' do
    expect(chef_run).to create_directory('/tmp/cheftest')
  end
end

describe 'file::create' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04').converge(described_recipe) }
  
  it 'Creates a file with an explicit action' do
    expect(chef_run).to create_file('/tmp/explicit_action').with(
      user: 'bob',
      group: 'chefusers',
    )
  end
end
