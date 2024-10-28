{config, pkgs, inputs, ...}:
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
      lsp = {
	enable = true;
	servers = {
	  ts_ls.enable = true;
	  lua_ls.enable = true;
	};
      };
      cmp = {
	enable = true;
	autoEnableSources = true;
	settings.sources = [
	{ name = "nvim_lsp"; }
	{ name = "path"; }
	];
      };
    };

  };
}
