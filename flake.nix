{
  description = "chipsalliance-playground-nix as a nix flake";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  inputs.nixpkgs = {
    url = "github:NixOS/nixpkgs/nixos-unstable";
    flake = false;
  };

  outputs = { self, flake-utils, nixpkgs }:
    flake-utils.lib.eachSystem
      [ "i686-linux" "x86_64-linux" "aarch64-linux" "aarch64-darwin"  ]
      (system: {
        legacyPackages = import nixpkgs {
          inherit system;
          crossSystem.config = "riscv64-unknown-linux-gnu";
        };

        devShell =
          self.legacyPackages.${system}.callPackage ./env.nix {};
      });
}
