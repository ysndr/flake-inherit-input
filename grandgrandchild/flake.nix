{
  description = "A very basic flake";

  inputs.nix.url = "nix";

  outputs = { self, nixpkgs, capacitor, ... }: {

    lib.test = capacitor.lib.capacitor;

  };
}
