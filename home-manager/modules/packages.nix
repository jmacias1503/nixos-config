{pkgs, ...}:
{
  nixpkgs.config.allowUnfree = true;
  home.packages  = with pkgs; [
    bluedevil
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
      enumitem
      scheme-full
      pgf
      ;
    })
    ttyper
    whatsapp-for-linux
    ytfzf
    zoom-us
    zsh
  ];
}
