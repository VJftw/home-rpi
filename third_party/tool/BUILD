remote_file(
    name = "k3d",
    url = f"https://github.com/rancher/k3d/releases/download/v4.4.4/k3d-{CONFIG.OS}-{CONFIG.ARCH}",
    hashes = [
        "6d4ac3d4c5b084f445980e427c5d3a75eefd2c39a22d028825c234c6c20d1e46", # linux-amd64
    ],
    binary = True,
    visibility = ["//scripts/..."],
)

remote_file(
    name = "helm",
    url = f"https://get.helm.sh/helm-v3.6.0-{CONFIG.OS}-{CONFIG.ARCH}.tar.gz",
    hashes = ["0a9c80b0f211791d6a9d36022abd0d6fd125139abe6d1dcf4c5bf3bc9dcec9c8"],
    binary = True,
    extract = True,
    exported_files = [f"{CONFIG.OS}-{CONFIG.ARCH}/helm"],
    visibility = ["//scripts/..."],
)
