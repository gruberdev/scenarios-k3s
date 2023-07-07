## Using the configuration file

- The documentation on step one regarding the CLI flags and configuration files should be open in another tab
- If you haven't open it yet, here's are the reference links:
  - [Configuration file reference][docs-uri-1]
  - [CLI flags reference][docs-uri-3]

## Create a cluster with custom CIDR IPs subnets

```plain
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


[docs-uri-1]: https://docs.k3s.io/installation/configuration#configuration-file
[docs-uri-2]: https://docs.k3s.io/installation/configuration#multiple-config-files
[docs-uri-3]: https://docs.k3s.io/cli/server