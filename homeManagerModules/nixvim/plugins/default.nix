{...}:
{
  imports = [
    ./cmp.nix
      ./lsp.nix
      ./treesitter.nix
      ./vimtex.nix
  ];
  programs.nixvim.plugins = {
    mini.enable = true;
    telescope.enable = true;
    trouble.enable = true;
    web-devicons.enable = true;
  };
}
