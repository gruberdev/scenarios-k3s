## Using the configuration file

- k3s read from a set of environment variables when initializing, thus providing you an easy way to configure your cluster through a set of variables.
- [Always check the release pages for the latest version][releases-uri]
- The latest release of the date of this tutorial was created is `v1.27.3+k3s1`, let's export this variable to the terminal.

```plain
export INSTALL_K3S_VERSION=v1.27.3+k3s1
export INSTALL_K3S_EXEC="server"
export K3S_CONFIG_FILE=/etc/rancher/k3s/config.yaml
```{{exec}}

<br>

## Create the cluster using our configuration file
```plain
curl -sfL https://get.k3s.io | sh -s - -c ${K3S_CONFIG_FILE} --docker
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