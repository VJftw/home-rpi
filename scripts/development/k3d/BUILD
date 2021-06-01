sh_binary(
    name = "setup",
    main = "setup.sh",
    data = [
        "//third_party/tool:k3d",
        "//third_party/sh:shflags",
        "//scripts/util:util",
        ":_config",
    ],
)


filegroup(
    name = "_config",
    srcs = ["config.yaml"],
)

sh_binary(
    name = "delete",
    main = "delete.sh",
    data = [
        "//third_party/tool:k3d",
        "//third_party/sh:shflags",
        "//scripts/util:util",
    ],
)
