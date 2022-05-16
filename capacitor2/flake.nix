{
  description = "Root";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/staging";

  outputs = { self, nixpkgs, root ? {lib.parent = "unset";},... } @ args: {

    lib.capacitor = (args.root).lib.parent;

  };
}
