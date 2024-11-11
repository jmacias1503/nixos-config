{pkgs, ...}:
let
  customSt = pkgs.st.overrideAttrs (old: {
    src = ./gui/st;
    });
in
{
  environment.systemPackages = with pkgs; [
    brave
    dmenu
    ffmpeg
    scrot
    customSt
    xclip
    xwallpaper
  ];
}
