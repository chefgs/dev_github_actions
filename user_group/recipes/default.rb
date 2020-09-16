#
# Cookbook:: user_group
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

group 'chefusers'

user 'bob' do
  group 'chefusers'
end

directory node['user_group']['file_path'] do
  recursive true
end

file_name = "${node['user_group']['file_path']}/chef.txt"

file file_name do
  content 'File is created by Chef file resource'
  mode '0755'
end
