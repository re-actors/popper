#!/bin/bash
set -ex

source common-setup.sh
# popper reset

init_test
popper init myp
set +e
popper reset
cat .popper.yml | grep 'myp'
if [ $? -eq 0 ];
then
  exit 1
fi
set -e