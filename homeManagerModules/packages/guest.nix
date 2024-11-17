{
  config,
  lib,
  pkgs,
  ...
}: {
  options = {
    hm-packages.guest.enable =
      lib.mkEnableOption "enables guest home-manager packages";
  };
  config = lib.mkIf config.hm-packages.guest.enable {
    nixpkgs.config.allowUnfree = false;
    home.packages = with pkgs; [
      firefox
      vlc
      vscodium
    ];
  };
}
