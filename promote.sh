#!/bin/bash

echo "promoting the new version ${VERSION} to downstream repositories"

jx step create pr regex \
    --regex 'version: (.*)' \
    --version ${VERSION} \
    --files git/github.com/jenkins-x/jxr-packs-kubernetes.yml \
    --repo https://github.com/jenkins-x/jxr-versions.git  