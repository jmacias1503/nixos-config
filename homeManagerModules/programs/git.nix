{...}:{
  programs.git = {
    enable = true;
    userName = "Alejandro jmacias8075";
    userEmail = "alex.mac.fon@gmail.com";
    aliases = {
      lg =  "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all";
    };
    delta.enable = true;
  };
}