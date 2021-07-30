{
  description = "Playground";
  inputs.nixpkgs = {
    url = "github:NixOS/nixpkgs/nixos-unstable";
    flake = false;
  };

  outputs = { self, nixpkgs }: {
    # TODO: All default systems, instead of just x86_64-linux

    legacyPackages.x86_64-linux = import nixpkgs {
      system = "x86_64-linux";
      crossSystem.config = "riscv64-unknown-linux-gnu";
    };

    devShell.x86_64-linux =
      self.legacyPackages.x86_64-linux.callPackage ./env.nix {};
  };
}
