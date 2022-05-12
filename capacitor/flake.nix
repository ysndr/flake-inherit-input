{
  description = "Root";



  outputs = { self, nixpkgs,... } @ args: {

    lib.capacitor = (args.root or {lib.parent = "unset";} ).lib.parent;

  };
}
