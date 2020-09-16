#
# Cookbook:: user_group
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
require 'spec_helper'

describe 'directory::create' do
  platform 'ubuntu', '18.04'
  it 'Creates a directory with the default action' do
    expect(chef_run).to create_directory('/tmp/cheftest')
  end
end

describe 'file::create' do
  platform 'ubuntu', '18.04'

  it 'Creates a file with an explicit action' do
    expect(chef_run).to create_file('/tmp/cheftest/chef.txt').with(
      user: 'bob',
      group: 'chefusers'
    )
  end
end
