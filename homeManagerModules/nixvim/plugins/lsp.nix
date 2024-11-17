{...}:{
  programs.nixvim.plugins.lsp = {
    enable = true;
    servers = {
      gopls.enable = true;
      nixd.enable = true;
      texlab.enable = true;
      ts_ls.enable = true;
    };
  };
      }
