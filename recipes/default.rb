#
# Cookbook Name:: fetchmail
# Recipe:: default
#
# Copyright 2014, Bráulio Bhavamitra <braulio@eita.org.br>
#
# License: GPLv3+
#

package 'fetchmail'

service 'fetchmail' do
  init_command '/etc/init.d/fetchmail'
  action :enable
end

template '/etc/fetchmailrc' do
  variables node['fetchmail']

  notifies :restart, "service[fetchmail]"
end
