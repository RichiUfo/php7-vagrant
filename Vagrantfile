Vagrant.configure(2) do |config|
  config.vm.provision :shell, path: '.setup/bootstrap.sh'
  config.vm.synced_folder '.', '/var/www/', owner: 'www-data', group: 'www-data'

  config.vm.provider 'virtualbox' do |virtualbox|
    config.vm.box = 'ubuntu/trusty64'
    config.vm.network 'forwarded_port', guest: 80, host: 8080, auto_correct: true
    config.vm.network 'forwarded_port', guest: 3306, host: 33066, auto_correct: true
    virtualbox.customize ['modifyvm', :id, '--memory', '1024']
  end
end