{...}:{
  nixpkgs.config.allowUnfree = true;
  imports = [
    ./gui-packages.nix
    ./term-packages.nix
  ];
}
