#!/bin/bash

set -e

# this script is used to output a specific version tag when on the master
# branch. This makes it possible to change the Docker image tagging scheme based
# on the branch, eg. use v1.2.3 for master builds and
# feature_something-sha1-sha1 to other branches.

if [ "$BRANCH_NAME" != "master" ]; then
  echo "$tag"
else
  shuttle get docker.baseTag
fi
