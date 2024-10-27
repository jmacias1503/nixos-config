{ config, pkgs, inputs, outputs, ...}:

{
  programs.zsh = {
    enable = true;
    defaultKeymap = "vicmd";
    enableCompletion = true;
    localVariables = {
      PROMPT="%n:%1~   󰄾  ";
    };
    history = {
      size = 100000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
    shellAliases = {
      v = "nvim";
      sb = "cd ~/Documents/second-brain";
      chambauaq = "nix develop ~/Shells/chambauaq -c $SHELL";
    };
    syntaxHighlighting.enable = true;
  };
}
