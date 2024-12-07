{pkgs, ...}: {
  programs.lf = {
    enable = true;
    package = pkgs.lf;
    settings = {
      icons = true;
    };
  };
}
