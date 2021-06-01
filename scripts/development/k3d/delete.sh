#!/bin/bash
# This script deletes a K3D cluster for home-rpi.
set -Eeuo pipefail

libs=(
    "//third_party/sh:shflags"
    "//scripts/util:util"
)
for lib in "${libs[@]}"; do
    source "$(plz query output "$lib")"
done

K3D_BIN="$(plz query output //third_party/tool:k3d)"

DEFINE_string 'cluster_name' 'home-rpi' 'The K3d cluster to delete' 'c'
FLAGS "$@" || exit $?
eval set -- "${FLAGS_ARGV}"

kubernetes_context="k3d-${FLAGS_cluster_name}"

$K3D_BIN cluster delete "${FLAGS_cluster_name}"
