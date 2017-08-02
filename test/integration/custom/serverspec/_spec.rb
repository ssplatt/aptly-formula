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
    its(:content) { should match /"architectures": \[\],/ }
    its(:content) { should match /"dependencyFollowAllVariants": false,/ }
    its(:content) { should match /"dependencyFollowRecommends": false,/ }
    its(:content) { should match /"dependencyFollowSource": false,/ }
    its(:content) { should match /"dependencyFollowSuggests": false,/ }
    its(:content) { should match /"downloadConcurrency": 4,/ }
    its(:content) { should match /"downloadSourcePackages": false,/ }
    its(:content) { should match /"downloadSpeedLimit": 0,/ }
    its(:content) { should match /"gpgDisableSign": false,/ }
    its(:content) { should match /"gpgDisableVerify": false,/ }
    its(:content) { should match /"ppaCodename": "",/ }
    its(:content) { should match /"ppaDistributorID": "ubuntu"/ }
end
