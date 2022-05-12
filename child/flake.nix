{
  description = "A very basic flake";

  inputs.nix.url = "nix";

  # inputs.grandchild.url = "/Volumes/Projects/Flox/tests/flakes/grandchild";
  # inputs.grandchild.inputs.capacitor.follows = "capacitor";
  


  outputs = { self, nixpkgs, capacitor, ... }: {

    lib.test = capacitor.lib.capacitor;
    # lib.test2 = grandchild.lib.grandchild;

  };
}
