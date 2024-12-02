{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    alejandra
    anki
    bluedevil
    brave
    discord
    fastfetch
    figma-linux
    gimp
    imv
    inkscape
    kicad
    mpv
    ncpamixer
    obsidian
    pdftk
    pomodoro
    qmk
    qrcp
    qutebrowser
    signal-desktop
    slack
    ttyper
    whatsapp-for-linux
    ytfzf
    zoom-us
    zotero
    zsh
  ];
}
