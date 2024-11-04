{pkgs, ...}:
{
  nixpkgs.config.allowUnfree = true;
  home.packages  = with pkgs; [
    bluedevil
    cmus
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
    (texlive.combine {
      inherit (pkgs.texlive)
      scheme-full
      pgf
      ;
    })
    ttyper
    whatsapp-for-linux
    ytfzf
    zathura
    zoom-us
    zsh
  ];
}
