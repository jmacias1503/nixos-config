{
  pkgs,
  ...
}: {
    nixpkgs.config.allowUnfree = true;
    home.packages = with pkgs; [
      alejandra
      bluedevil
      brave
      discord
      fastfetch
      figma-linux
      gimp
      imv
      inkscape
      mpv
      ncpamixer
      obsidian
      pdftk
      pomodoro
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
