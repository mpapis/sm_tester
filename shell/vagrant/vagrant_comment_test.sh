#!/usr/bin/env zsh

eval $(sm test ext sm_tester/vagrant)

mkdir -p "${sm_temp_path}/sm_tester/"
[[ -f "${sm_temp_path}/sm_tester/Vagrantfile" ]] # status!=0

generate_vm_config ubuntu_1204_64_precise http://files.vagrantup.com/precise64.box "${sm_temp_path}/sm_tester/Vagrantfile" cpus=4 memory=4096
# status=0

[[ -f "${sm_temp_path}/sm_tester/Vagrantfile" ]] # status=0

cat "${sm_temp_path}/sm_tester/Vagrantfile"
# match=/config.vm.box     = "ubuntu_1204_64_precise"/
# match=/config.vm.box_url = "http://files.vagrantup.com/precise64.box"/
