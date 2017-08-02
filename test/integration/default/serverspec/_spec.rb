require 'serverspec'

# Required by serverspec
set :backend, :exec


describe package('aptly') do
  it { should be_installed }
end

describe file('/etc/aptly.conf') do
    it { should be_file }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
end
