{...}: {
  programs = {
    cmus = {
      enable = true;
      theme = "dracula";
    };
    git = {
      enable = true;
      userName = "Alejandro jmacias8075";
      userEmail = "alex.mac.fon@gmail.com";
      aliases = {
        lg = "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all";
      };
      delta.enable = true;
    };
    gpg = {
      enable = true;
    };
    zathura = {
      enable = true;
      options = {
        default-bg = "#282a36";
        default-fg = "#f8f8f2";
      };
    };
  };
}
