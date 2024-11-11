{pkgs, ...}:
let
  customSt = pkgs.st.overrideAttrs (old: {
    src = ./st;
    });
in
{
  environment.systemPackages = with pkgs; [
    dmenu
    ffmpeg
    scrot
    customSt
    xclip
    xwallpaper
  ];
}
