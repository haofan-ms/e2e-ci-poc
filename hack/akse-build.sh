#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
set -o xtrace

REPO_ROOT=$(dirname "${BASH_SOURCE[0]}")/..
LOCAL_DIR=$(cd ${REPO_ROOT}/aks-engine; pwd)
WORK_DIR="/aks-engine"

echo "here!"

sudo docker run --rm \
-v ${LOCAL_DIR}:${WORK_DIR} \
-w ${WORK_DIR} \
${DEV_IMAGE} \
make build-binary
