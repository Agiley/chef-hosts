template "/etc/hostname" do
  source "hostname.erb"
  owner "root"
  group "root"
  mode 0644
end

execute "hostname -F /etc/hostname"

template "/etc/hosts" do
  source "hosts.erb"
  owner "root"
  group "root"
  mode 0644
end