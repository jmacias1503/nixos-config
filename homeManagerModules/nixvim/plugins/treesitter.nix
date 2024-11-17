{...}: {
  programs.nixvim.plugins.treesitter = {
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
}
