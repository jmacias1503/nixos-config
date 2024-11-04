{pkgs, ...}:
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
  programs = {
    cmus = {
      theme = "dracula";
    };
    git = {
      enable = true;
      userName = "Alejandro jmacias8075";
      userEmail = "alex.mac.fon@gmail.com";
      aliases = {
        lg = "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all";
      };
    };
    gpg = {
      enable = true;
    };
  };
  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "brave";
    CHAMBAUAQ_PATH = "/home/jmacias8075/Documents/projects/bolsa_de_trabajo_back/";
  };
#users.users.jmacias8075.shell = pkgs.zsh;
  home.username = "jmacias8075";
  home.stateVersion = "24.05";
}
