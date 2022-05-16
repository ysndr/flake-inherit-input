{
  description = "A very basic flake";
  inputs.capacitor.url = "/Volumes/Projects/Flox/tests/flakes/capacitor2";
  inputs.capacitor.inputs.root.follows = "/";
  # inputs.capacitor.register = true;

  inputs.grandgrandchild.url = "/Volumes/Projects/Flox/tests/flakes/grandgrandchild";


  outputs = { self, nixpkgs, capacitor}: {
    lib.grandchild = "grandchild-${capacitor.inputs.nixpkgs.lib.version}";
  };
}
