{pkgs, ...}: {
  imports = [
    ./../../homeManagerModules
    ./packages.nix
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
  xdg = {
    desktopEntries = {
      imv = {
	name = "ImV";
	exec = "${pkgs.imv}/bin/imv";
      };
      neovim = {
	name = "NeoVim";
	exec = "${pkgs.neovim}/bin/nvim";
      };
      zathura = {
	name = "Zathura";
	exec = "${pkgs.zathura}/bin/zathura";
      };
    };
    mimeApps = {
      enable = true;
      defaultApplications = {
	"text/plain" = "neovim.desktop";
	"application/pdf" = "zathura.desktop";
	"image/jpeg" = "imv.desktop";
	"image/jpg" = "imv.desktop";
	"image/png" = "imv.desktop";
      };
    };
  };
  home.homeDirectory = "/home/jmacias8075";
}
