#
# Cookbook:: user_group
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
# require 'chefspec'
# require 'chefspec/policyfile'
require 'spec_helper'

describe 'user_group::default' do
  platform 'ubuntu', '18.04'
  Chef::Log.debug('Checking Directory Resource')
  it 'Creates a directory with the default action' do
    expect(chef_run).to create_directory('/tmp/cheftest')
  end

  Chef::Log.debug('Checking File Resource')
  it 'Creates a file with an explicit action' do
    expect(chef_run).to create_file('/tmp/cheftest/chef.txt').with(
      user: 'bob',
      group: 'chefusers'
    )
  end
end
