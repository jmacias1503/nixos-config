{...}: {
  imports = [
    ./../../homeManagerModules
    ./packages.nix
  ];

  home.username = "guest";
  home.stateVersion = "24.05";
}
