#!/bin/bash

set -euo pipefail

# enable cgroups for K3s
echo "cgroup_memory=1 cgroup_enable=memory" >> /boot/cmdline.txt
