#!/bin/bash

GITHUB_USER=
GITHUB_REPO=
GITHUB_TOKEN=
KEY_FP=

gpg --export-secret-keys --armor "${KEY_FP}" | 
  kubectl create secret generic sops-gpg \
  --namespace=flux-system \
  --from-file=sops.asc=/dev/stdin

flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=$GITHUB_REPO \
  --branch=main \
  --path=./cluster \
  --personal