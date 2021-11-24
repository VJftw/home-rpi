#!/bin/bash

set -euo pipefail

# enable ARM64(aarch64) kernel
echo "arm_64bit=1" >> /boot/config.txt
