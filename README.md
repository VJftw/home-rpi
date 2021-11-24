# home-rpi

## Tools

 * K3s on a Raspberry Pi (K3d for local/integration-testing)

## Raspberry Pi 4 8GB Setup
ARCH=armhf

* Raspberry Pi OS Lite
* Enable SSH

### K3s 
1. add `cgroup_memory=1 cgroup_enable=memory` to `/boot/cmdline.txt`.
2. add `arm_64bit=1` to the end of `/boot/config.txt`.
3. ```bash
curl -LO https://raw.githubusercontent.com/VJftw/vjpatel.me/master/deployment/scaleway-dev/k3s/k3s.sh
TODO: ^ fix above script to resolve arch and add krew installation
chmod +x k3s.sh
./k3s.sh \
  k3s.vjpatel.me \
  https://vjpatel.eu.auth0.com/ \
  PT1R4dJdij9LqJWJI3a3i1VcIcFXy5Lj \
  vj@vjpatel.me
```


# TODO

* Helm chart plz build def
  * Use https://github.com/k8s-at-home/charts/tree/home-assistant-8.3.1/charts/stable/home-assistant w/ kustomize
    * Add ingress
* K3s core services:
  * Traefik (K3s default ingress)
    * Add LetsEncrypt
  * Expose Ingress over the Internet via Public IP with tool to monitor and update DNS on R53.
* Home-assistant configuration-management/immutability
  * add `.storage` to VCS (https://www.home-assistant.io/blog/2020/04/14/the-future-of-yaml/)
## CICD

Options:
 * Add Raspberry Pi as Github action runner to build/deploy to itself.
