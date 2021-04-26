#!/bin/sh
echo
cat /etc/ansible/facts.d/host-info.fact
echo
. /etc/os-release
echo "Operating System : ${PRETTY_NAME}"
echo