{config, pkgs, inputs, outputs, ...}:
{
  imports = [
    ./modules/shell.nix
    ./modules/nixvim.nix
  ];

  nixpkgs.config.allowUnfree = true;
  home.packages  = with pkgs; [
    bluedevil
    cmus
    fastfetch
    gimp
    imv
    inkscape
    libreoffice
    mpv
    ncpamixer
    qrcp
    signal-desktop
    (texlive.combine {
      inherit (pkgs.texlive)
      scheme-full
      pgf
      ;
    })
    whatsapp-for-linux
    zathura
    zoom-us
    zsh
  ];
  programs.git = {
    enable = true;
    userName = "Alejandro jmacias8075";
    userEmail = "alex.mac.fon@gmail.com";
  };
  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "brave";
  };
  programs.gpg = {
    enable = true;
  };
#users.users.jmacias8075.shell = pkgs.zsh;
  home.username = "jmacias8075";
  home.stateVersion = "24.05";
}
