#!/usr/bin/env bash

eval $(minikube docker-env)

kubectl config set-context minikube.internal --cluster=minikube --user=minikube

kubectl config use-context minikube.internal

kubectl config current-context

kubectl cluster-info