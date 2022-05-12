{
  description = "A very basic flake";

  outputs = { self, nixpkgs, capacitor }: {
    lib.grandchild = "grandchild-${capacitor.lib.capacitor}";
  };
}
