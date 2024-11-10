{ pkgs, ...}:

{

  services.xserver.enable = true;
  services.xserver.windowManager.dwm = {
    enable = true;
    package = pkgs.dwm.overrideAttrs {
      src = ./../packages/self-built/dwm;
    };
  };
}
