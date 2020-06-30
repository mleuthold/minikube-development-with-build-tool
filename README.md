# local development on Kubernetes

Requirements on an Ubuntu system:

```shell script
# install local kubernetes
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
   && sudo install minikube-linux-amd64 /usr/local/bin/minikube

# install build tool
sudo snap install task --classic
```

