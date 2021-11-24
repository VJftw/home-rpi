package(default_visibility = ["PUBLIC"])

go_toolchain(
    name = "toolchain",
    hashes = [
        "550f9845451c0c94be679faf116291e7807a8d78b43149f9506c1b15eb89008c",  # linux-amd64
    ],
    version = "1.17.3",
)

go_module(
    name = "jessevdk_flags",
    licences = ["BSD-3-Clause"],
    module = "github.com/jessevdk/go-flags",
    version = "v1.5.0",
    deps = [":x_sys"],
)

go_module(
    name = "x_sys",
    hashes = ["e9ba045ac49a174a9bb1220fc50e89b46e26c8ea18d987248baec06478c9c7bf"],
    install = [
        "unix",
        "cpu",
    ],
    module = "golang.org/x/sys",
    version = "95b1ffbd15a57cc5abb3f04402b9e8ec0016a52c",
)
