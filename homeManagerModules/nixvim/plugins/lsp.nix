{...}: {
  programs.nixvim.plugins.lsp = {
    enable = true;
    servers = {
      clangd.enable = true;
      gopls.enable = true;
      html.enable = true;
      nixd.enable = true;
      texlab.enable = true;
      ts_ls.enable = true;
    };
  };
}
