#
# Cookbook:: user_group
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

group 'chefusers'

user 'bob' do
  group 'chefusers'
end

directory '/tmp/cheftest/' do
  recursive true
end

file_name = "/tmp/cheftest/chef.txt"

file file_name do
  content 'File is created by Chef file resource'
  mode '0755'
end
