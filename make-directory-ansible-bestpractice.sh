#!/bin/sh -x
PLAYBOOK_DIR="/etc/ansible/playbook"
ENVIRONMENTS=('development' 'staging' 'production')
ROLES=('common' 'openstack')

cd $PLAYBOOK_DIR

touch site.yml common.yml
mkdir -p group_vars host_vars library filter_plugins roles

for environment in ${ENVIRONMENTS[@]}; do
    touch $environment
    touch group_vars/$environment.yml
done

for role in ${ROLES[@]}; do
    mkdir -p $PLAYBOOK_DIR/roles/$role && cd $_
    mkdir -p tasks handlers templates files vars defaults meta
    touch tasks/main.yml
    touch handlers/main.yml
    touch vars/main.yml
    touch defaults/main.yml
    touch meta/main.yml
done
