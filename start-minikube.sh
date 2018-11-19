#!/usr/bin/env bash

CHANGE_MINIKUBE_NONE_USER=true

sudo minikube start --cpus 4 --memory 6096 --vm-driver=none --v=8

sudo mv /root/.kube $HOME/.kube # this will write over any previous configuration
sudo chown -R $USER $HOME/.kube
sudo chgrp -R $USER $HOME/.kube

sudo mv /root/.minikube $HOME/.minikube # this will write over any previous configuration
sudo chown -R $USER $HOME/.minikube
sudo chgrp -R $USER $HOME/.minikube
