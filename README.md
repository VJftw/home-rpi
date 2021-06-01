# home-rpi

## Tools

 * K3s on a Raspberry Pi (K3d for local/integration-testing)


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
