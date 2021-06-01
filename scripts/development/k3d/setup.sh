#!/bin/bash
# This script creates a K3D cluster for home-rpi.
set -Eeuo pipefail

libs=(
    "//third_party/sh:shflags"
    "//scripts/util:util"
)
for lib in "${libs[@]}"; do
    source "$(plz query output "$lib")"
done

K3D_BIN="$(plz query output //third_party/tool:k3d)"
K3D_CONFIG="$(plz query output //scripts/development/k3d:_config)"

DEFINE_string 'cluster_name' 'home-rpi' 'The K3d cluster to use' 'c'
FLAGS "$@" || exit $?
eval set -- "${FLAGS_ARGV}"

kubernetes_context="k3d-${FLAGS_cluster_name}"

if ! $K3D_BIN cluster list | grep "${FLAGS_cluster_name}" 2>&1 > /dev/null; then
  util::info "Creating K3d cluster ${FLAGS_cluster_name}"
  $K3D_BIN cluster create --config "${K3D_CONFIG}" "${FLAGS_cluster_name}" 
  util::success "Created K3d cluster"
  kubectl config use-context "${kubernetes_context}"
else
  util::success "K3d cluster already exists"
fi
