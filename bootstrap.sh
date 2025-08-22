#!/bin/bash

if [[ -z "$(dpkg -l | grep -e "^ii\s\+ansible ")" ]]; then
    sudo apt update
    sudo apt install software-properties-common
    sudo add-apt-repository --yes --update ppa:ansible/ansible
    sudo apt install ansible
fi

ansible-playbook ./playbooks/laptop.yml

