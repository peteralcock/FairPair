# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install -y curl gnupg build-essential
    curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    sudo apt-get update
    sudo apt-get install -y nodejs yarn
    sudo apt-get install -y postgresql postgresql-contrib libpq-dev
    sudo -u postgres createuser -s vagrant
    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    curl -sSL https://get.rvm.io | bash -s stable
    source /home/vagrant/.rvm/scripts/rvm
    rvm install 3.1.2
    gem install bundler
    gem install rails
    cd /vagrant
    bundle install
    yarn install --check-files
    bin/rails db:create
    bin/rails db:migrate
  SHELL

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end
end
