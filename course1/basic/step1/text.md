## Initial steps

- [Official documentation regarding configuration files][docs-uri-1]
- [There's an option to use multiple config files instead of one, here's the documentation on it.][docs-uri-2]
- [Values to be used on the configuration file are the same flags used by the CLI tool, here's a list of all the flags][docs-uri-3]
- **This tutorial will focus on using only one configuration file, but anything done here can be easily split on multiple files.**

<br>

### Create a folder to store the configuration file

```plain
mkdir -p /etc/rancher/k3s
```{{exec}}

<br>

### Edit your first configuration file

- Use `nano`{{}} or `vi`{{}}, or the *Editor* tab provided by *Killercoda*.

```plain
vi /etc/rancher/k3s/config.yaml
```{{exec}}


```plain
nano /etc/rancher/k3s/config.yaml
```{{exec}}

### **Important**

- **Change the *node name* (or *hostname*) to a known value, it can be anything you choose.**
- [Check the official documentation on the k3s server flags, the flags have the same values as the keys for the configuration file.][docs-uri-3]

## Map keys using CLI flags

- [As observed on the official documentation][docs-uri-3], observe the following cli flag example:

```plain
k3s server --write-kubeconfig-mode "0644"
```{{}}

- Becomes the following configuration file set of instructions:

```plain
write-kubeconfig-mode: "0644"
```{{}}

- **You have to do the same for the flag that changes the node hostname to move on to the next step. The file should be at `/etc/rancher/k3s/config.yaml`{{}}.**

---

<br>

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
[docs-uri-3]: https://docs.k3s.io/cli/server
