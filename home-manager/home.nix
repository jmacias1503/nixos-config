{pkgs, ...}:
{
  imports = [
    ./modules/shell.nix
    ./modules/nixvim.nix
    ./modules/programs-config.nix
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
    rpi-imager
    signal-desktop
    slack
    (texlive.combine {
      inherit (pkgs.texlive)
      scheme-full
      pgf
      ;
    })
    ttyper
    whatsapp-for-linux
    ytfzf
    zathura
    zoom-us
    zsh
  ];
  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "brave";
    CHAMBAUAQ_PATH = "/home/jmacias8075/Documents/projects/bolsa_de_trabajo_back/";
  };
#users.users.jmacias8075.shell = pkgs.zsh;
  home.username = "jmacias8075";
  home.stateVersion = "24.05";
}
