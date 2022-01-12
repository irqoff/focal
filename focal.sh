#!/bin/bash

set -o errexit -o nounset -o xtrace

source ~/focal/ansible.sh

cd ~/focal && ansible-playbook focal.yml -K --skip-tags brew_package

set +o nounset
source ~/.bashrc
set -o nounset

cd ~/focal && ansible-playbook focal.yml -K -t brew_package

set +o errexit +o nounset +o xtrace
