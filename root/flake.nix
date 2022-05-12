{
  description = "A very basic flake";



  inputs.capacitor.url = "/Volumes/Projects/Flox/tests/flakes/capacitor";
  inputs.capacitor.inputs.root.follows = "/";

  inputs.child.url = "/Volumes/Projects/Flox/tests/flakes/child";



  inputs.child.inputs.capacitor.follows = "capacitor";


  outputs = { self, nixpkgs, child, capacitor }: {

    lib.test = child.lib.test;
    lib.test-grandchild = child.lib.test2;
    lib.parent = "parent";

  };
}
