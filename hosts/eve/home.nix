{...}:
{
  imports = [
    ./../../homeManagerModules
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "brave";
    CHAMBAUAQ_PATH = "$HOME/Documents/projects/bolsa_de_trabajo_back/";
    OSFLAKE = "$HOME/NixOS";
  };
#users.users.jmacias8075.shell = pkgs.zsh;
  home.username = "jmacias8075";
  home.stateVersion = "24.05";
}