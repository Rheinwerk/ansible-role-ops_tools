#!/bin/bash -e
ansible-playbook --syntax-check test.yml -i inventory $@
ansible-playbook test.yml -i inventory $@

