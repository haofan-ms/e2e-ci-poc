#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
set -o xtrace

cd aks-engine/
./test/e2e/cluster.sh