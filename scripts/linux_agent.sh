#!/bin/bash
set -ex
hostname linux.vm
echo '192.168.50.4 puppet-master.vm master' >> /etc/hosts
echo '192.168.50.5 linux-ageant.vm linux' >> /etc/hosts
curl -k https://puppet-master.vm:8140/packages/current/install.bash | bash
