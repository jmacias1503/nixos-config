{pkgs, ...}: let
  customSt = pkgs.st.overrideAttrs (old: {
    src = ./st;
  });
in {
  environment.systemPackages = with pkgs; [
    dmenu
    ffmpeg
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtquickcontrols2
    scrot
    customSt
    xclip
    xwallpaper
  ];
}
