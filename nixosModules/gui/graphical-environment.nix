{
  config,
  lib,
  pkgs,
  ...
}: {
  options = {
    graphical-environment.enable = lib.mkEnableOption "enables graphical-environment";
  };

  config = lib.mkIf config.graphical-environment.enable {
    services = {
      xserver = {
        enable = true;
        windowManager = {
          dwm = {
            enable = true;
            package = pkgs.dwm.overrideAttrs {
              src = ./dwm;
            };
          };
        };
        desktopManager = {
          xfce.enable = true;
        };
      };
      dwm-status = {
        enable = true;
        order = ["time" "audio" "battery"];
      };
    };
  };
}
