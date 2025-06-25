#!/usr/bin/env bash
set -e
COMMIT=$(git rev-parse HEAD)
echo "Building $COMMIT inside $(pwd)"

docker build -t vinita502/nodeapp:$BRANCH_NAME .
docker build -t nodeapp/"$BRANCH_NAME":$COMMIT .
