
package 'fetchmail'

service 'fetchmail' do
  init_command '/etc/init.d/fetchmail'
  action :enable
end

template '/etc/fetchmailrc' do
  variables node['fetchmail']

  notifies :restart, "service[fetchmail]"
end
