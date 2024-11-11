{lib, pkgs, ...}:{
  imports = [
    ./gui-packages.nix
    ./term-packages.nix
  ];

  environment.systemPackages = with pkgs; lib.concatLists [
    gui-packages
    term-packages
  ];
}
