{ pkgs ? import <nixpkgs> {
    crossSystem = {
      config = "riscv64-none";
      libc = "newlib";
    };
  }
}:

pkgs.callPackage ./env.nix {}