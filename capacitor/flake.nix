{
  description = "Root";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/staging";
  inputs.root.url = "root";

  outputs =  args: {

    lib.capacitor = (args.root).lib.parent;

  };
}
