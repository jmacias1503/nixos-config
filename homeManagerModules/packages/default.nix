{pkgs, ...}:
{
  imports = [
    ./jmacias8075.nix
    ./guest.nix
  ];
  nixpkgs.config.allowUnfree = true;
  home.packages  = with pkgs; [
    libreoffice
  ];
}
