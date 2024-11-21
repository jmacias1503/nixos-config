{
  config,
  lib,
  pkgs,
  ...
}: {
  options = {
    hm-packages.jmacias8075.enable =
      lib.mkEnableOption "enables jmacias8075 home-manager packages";
  };
  config = lib.mkIf config.hm-packages.jmacias8075.enable {
    nixpkgs.config.allowUnfree = true;
    home.packages = with pkgs; [
      alejandra
      bluedevil
      brave
      discord
      fastfetch
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
  };
}
