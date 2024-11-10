{config, lib, pkgs, ...}:

{
  options = {
    graphical-environment.enable = lib.mkEnableOption "enables graphical-environment";
  };

  config = lib.mkIf config.graphical-environment.enable {
    services.xserver.enable = true;
    services.xserver.windowManager.dwm = {
      enable = true;
      package = pkgs.dwm.overrideAttrs {
        src = ./../packages/self-built/dwm;
      };
    };
  };
}
