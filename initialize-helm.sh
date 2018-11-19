#!/usr/bin/env bash

# https://docs.confluent.io/current/installation/installing_cp/cp-helm-charts/docs/index.html

helm init
helm repo update
helm list

helm repo add confluentinc https://raw.githubusercontent.com/confluentinc/cp-helm-charts/master
helm repo update

helm install --set cp-schema-registry.enabled=false,cp-kafka-rest.enabled=false,cp-kafka-connect.enabled=false confluentinc/cp-helm-charts