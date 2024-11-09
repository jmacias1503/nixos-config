{pkgs, ...}:
{
  nixpkgs.config.allowUnfree = true;
  home.packages  = with pkgs; [
    bluedevil
    discord
    fastfetch
    gimp
    imv
    inkscape
    libreoffice
    mpv
    ncpamixer
    qrcp
    qutebrowser
    rpi-imager
    signal-desktop
    slack
    ttyper
    whatsapp-for-linux
    ytfzf
    zoom-us
    zsh
  ];
}
