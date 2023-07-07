## Creating the configuration file

- [Here is the official documentation regarding configuration files][docs-uri-1]
- [There's an option to use multiple config files instead of one, here's the documentation on it.][docs-uri-2]
- This tutorial will focus on using only one configuration file, but anything done here can be easily split on multiple files.

### First, let's create a folder to place our configuration file for the cluster.
```plain
mkdir -p /etc/rancher/k3s
```{{exec}}

<br>

### Now, let's create a config file with a very simple set of instructions

Use `nano` or `vi` for that

```plain
vi /etc/rancher/k3s/config.yaml
```{{exec}}


```plain
nano /etc/rancher/k3s/config.yaml
```{{exec}}


<details>
<summary>Solution</summary>

```plain
cat << EOF > /etc/rancher/k3s/config.yaml
node-name: "k3s-killercoda"
EOF
```{{exec}}

</details>

<br>


[docs-uri-1]: https://docs.k3s.io/installation/configuration#configuration-file
[docs-uri-2]: https://docs.k3s.io/installation/configuration#multiple-config-files