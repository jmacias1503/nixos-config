{
  pkgs,
  ...
}: {
    nixpkgs.config.allowUnfree = false;
    home.packages = with pkgs; [
      firefox
      vlc
      vscodium
    ];
}
