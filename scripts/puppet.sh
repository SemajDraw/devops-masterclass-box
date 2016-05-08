#!/bin/bash -e

apt-get -y install curl
curl -O https://apt.puppetlabs.com/puppetlabs-release-precise.deb
dpkg -i puppetlabs-release-precise.deb
apt-get -y update
apt-get -y install puppet

cd /etc/puppet ; sudo puppet module install puppetlabs-stdlib
cd /etc/puppet ; sudo puppet module install puppetlabs-concat
cd /etc/puppet ; sudo puppet module install puppetlabs-apache
cd /etc/puppet ; sudo puppet module install puppetlabs-mysql
