{inputs, ...}:
{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];
  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    opts = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
    };
    plugins = {
      cmp = {
	enable = true;
	autoEnableSources = true;
	settings.sources = [
	{ name = "nvim_lsp"; }
	{ name = "path"; }
	];
      };
      lsp = {
	enable = true;
	servers = {
	  gopls.enable = true;
	  nixd.enable = true;
	  prismals = {
	    enable = true;
	    package = null;
	  };
	  ts_ls.enable = true;
	};
      };
      mini.enable = true;
      telescope.enable = true;
      trouble.enable = true;
      vimtex = {
	enable = true;
	settings = {
	  view_method = "zathura";
	};
      };
      web-devicons.enable = true;
    };

  };
}
