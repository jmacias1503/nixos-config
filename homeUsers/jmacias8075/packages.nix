{pkgs, ...}: 
let
  tmux-chambauaq = import ./scripts/tmux-chambauaq.nix {inherit pkgs; };
  daily-comms = import ./scripts/daily-comms.nix {inherit pkgs; };
in
{
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    alejandra
    anki
    bluedevil
    brave
    daily-comms
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
    tmux-chambauaq
    ttyper
    whatsapp-for-linux
    ytfzf
    zoom-us
    zotero
    zsh
  ];
}
