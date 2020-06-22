#!/bin/sh -l

set -eu

KEY=$(echo $GIT_CRYPT_KEY | base64  --decode)

git-crypt unlock "$KEY"

rm ./git-crypt-key
