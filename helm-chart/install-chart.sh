#!/usr/bin/env bash

helm lint

helm tiller run -- helm install .

helm package . --debug

helm tiller run -- helm install helm-chart-0.1.0.tgz

helm tiller run -- helm upgrade --install my-own-release .

helm tiller run -- helm list

env HELM_TILLER_SILENT=true helm tiller run -- helm ls --output=json | jq '.Releases[].Name'

# deletion sOmEhOw doesn't work...
# FIRST_RELEASE=$(env HELM_TILLER_SILENT=true helm tiller run -- helm ls --output=json | jq '.Releases[0].Name')
# helm tiller run -- helm delete "${FIRST_RELEASE}"

# nice, it works
# helm tiller run -- helm rollback youtful-gopher 1