#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
set -o xtrace

if [ -d "e2e-ci-poc" ];
then
    rm -rf e2e-ci-poc
fi

git clone https://github.com/jadarsie/e2e-ci-poc -b master
