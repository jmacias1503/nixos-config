{inputs, pkgs, ...}:
{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    clipboard.register = "unnamedplus";
    colorschemes = {
      dracula = {
	enable = true;
      };
    };
    opts = {
      conceallevel = 2;
      mouse = "";
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
	settings.mappings = {
	  "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
	  "<C-j>" = "cmp.mapping.select_next_item()";
	  "<C-k>" = "cmp.mapping.select_prev_item()";
	  "<C-e>" = "cmp.mapping.abort()";
	  "<C-b>" = "cmp.mapping.scroll_docs(-4)";
	  "<C-f>" = "cmp.mapping.scroll_docs(4)";
	  "<C-Space>" = "cmp.mapping.complete()";
	  "<CR>" = "cmp.mapping.confirm({ select = true })";
	  "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
	};
      };
      lsp = {
	enable = true;
	servers = {
	  gopls.enable = true;
	  nixd.enable = true;
	  texlab.enable = true;
	  ts_ls.enable = true;
	};
      };
      mini.enable = true;
      telescope.enable = true;
      treesitter = {
	enable = true;

	settings = {
	  auto_install = false;
	  ensure_installed = [
	    "json"
	    "nix"
	    "prisma"
	    "typescript"
	  ];
	  highlight = {
	    additional_vim_regex_highlighting = true;
	    enable = true;
	  };
	};
      };
      trouble.enable = true;
      vimtex = {
	enable = true;
	settings = {
	  view_method = "zathura";
	};
	texlivePackage = pkgs.texlive.scheme-full;
      };
      web-devicons.enable = true;
    };

  };
}
