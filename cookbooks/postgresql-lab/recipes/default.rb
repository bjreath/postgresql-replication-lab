#
# Cookbook Name:: postgresql-lab
# Recipe:: default
#
# Copyright 2013, Brian Reath
#
# All rights reserved - Do Not Redistribute
#

include_recipe "postgresql::yum_pgdg_postgresql"
include_recipe "postgresql::server"

postgresql_connection_info = {:host => "localhost",
                              :port => node['postgresql']['config']['port'],
                              :username => 'postgres',
                              :password => node['postgresql']['password']['postgres']}

link "/usr/local/bin/pg_config" do
  to "/usr/pgsql-9.2/bin/pg_config"
end

gem_package("pg") do
  gem_binary "/opt/chef/embedded/bin/gem"
end

postgresql_database_user 'ccisystems' do
  connection postgresql_connection_info
  password node['postgresql']['password']['postgres']
  action :create
end

postgresql_database 'postgresql-lab' do
  connection postgresql_connection_info
  template 'DEFAULT'
  encoding 'DEFAULT'
  tablespace 'DEFAULT'
  connection_limit '-1'
  owner 'ccisystems'
  action :create
end
