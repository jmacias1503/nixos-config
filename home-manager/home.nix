{...}:
{
  imports = [
    ./modules/shell.nix
    ./modules/nixvim.nix
    ./modules/programs-config.nix
    ./modules/packages.nix
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "brave";
    CHAMBAUAQ_PATH = "/home/jmacias8075/Documents/projects/bolsa_de_trabajo_back/";
    OSFLAKE = "$HOME/NixOS";
  };
#users.users.jmacias8075.shell = pkgs.zsh;
  home.username = "jmacias8075";
  home.stateVersion = "24.05";
}
