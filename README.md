# chipsalliance-playground-nix

[`sequencer/chipsalliance-playground`][chipsalliance-playground], but it's in Nix.

[chipsalliance-playground]: https://github.com/sequencer/chipsalliance-playground

## Nix Flake

This repository contains a Nix Flake. Use the following Flake URL:

```plain
github:dramforever/chipsalliance-playground-nix
```

Contents of this flake:

```plain
github:dramforever/chipalliance-playground-nix/[...]
├───devShell
│   ├───aarch64-darwin: development environment 'playground-riscv64-unknown-linux-gnu'
│   ├───aarch64-linux: development environment 'playground-riscv64-unknown-linux-gnu'
│   ├───i686-linux: development environment 'playground-riscv64-unknown-linux-gnu'
│   └───x86_64-linux: development environment 'playground-riscv64-unknown-linux-gnu'
└───legacyPackages
    ├───aarch64-darwin: omitted (use '--legacy' to show)
    ├───aarch64-linux: omitted (use '--legacy' to show)
    ├───i686-linux: omitted (use '--legacy' to show)
    └───x86_64-linux: omitted (use '--legacy' to show)
```

## Getting started with Flakes

Start a development environment with the following command

```
nix develop github:dramforever/chipsalliance-playground-nix
```

For convenience, a `riscv64-unknown-linux-gnu` cross compiled package set is also exposed so you can cross with ease. Horray for Nixpkgs.

```console
$ nix build github:dramforever/chipsalliance-playground-nix#hello
$ file result/bin/hello
result/bin/hello: ELF 64-bit LSB executable, UCB RISC-V, version 1 (SYSV), dynamically linked, interpreter /nix/store/[...]-glibc-riscv64-unknown-linux-gnu-2.33-47/lib/ld-linux-riscv64-lp64d.so.1, for GNU/Linux 2.6.32, not stripped
```

## Getting started without Flakes

A `shell.nix` is provided for with `nix-shell`, without using Flakes.
