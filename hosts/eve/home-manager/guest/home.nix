{...}: {
  imports = [
    ./../../../../homeManagerModules
  ];
  hm-packages.guest.enable = true;
  hm-packages.jmacias8075.enable = false;

  home.username = "guest";
  home.stateVersion = "24.05";
}
