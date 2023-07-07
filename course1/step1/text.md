
Everything can also be found on:
https://docs.k3s.io/quick-start

<br>

We're working here with a Ubuntu Linux VM that has never seen anything "Kubernetes" before!

<br>

## Please check for the latest release at the official k3s Dockerhub

- k3s read from a set of environment variables when initializing, thus providing you an easy way to configure your cluster through a set of variables.
- [Always check the release pages for the latest version][releases-uri]
- ```plain
export INSTALL_K3S_VERSION=v1.27.3+k3s1
```{{exec}}

<br>

## Test
```plain
kubectl get node
```{{exec}}

```plain
kubectl run nginx --image=nginx:alpine
```{{exec}}

<br>

## Alias "k"
```plain
alias k=kubectl
```{{exec}}

```plain
k get pod
```{{exec}}

<br>

K3s is slim, fast and provides full Kubernetes!


[releases-uri]: https://github.com/k3s-io/k3s/releases