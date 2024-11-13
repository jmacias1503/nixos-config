{pkgs, ...}:
let
  web-browser = pkgs.brave;
  browse = import ./scripts/browse.nix { inherit pkgs; };
in
{
  nixpkgs.config.allowUnfree = true;
  home.packages  = with pkgs; [
    bluedevil
    discord
    browse
    fastfetch
    gimp
    imv
    inkscape
    libreoffice
    mpv
    ncpamixer
    obsidian
    qrcp
    qutebrowser
    signal-desktop
    slack
    ttyper
    web-browser
    whatsapp-for-linux
    ytfzf
    zoom-us
    zsh
  ];
}
