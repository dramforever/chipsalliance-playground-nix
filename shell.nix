{ pkgs ? import <nixpkgs> {
    crossSystem.config = "riscv64-unknown-linux-gnu";
  }
}:

pkgs.callPackage ./env.nix {}