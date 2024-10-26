{config, pkgs, ...}:
let
in
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
		};
		syntaxHighlighting.enable = true;
	};
	home.packages  = with pkgs; [
		brave
		cmus
		fastfetch
		gimp
		gnupg
		lf
		zsh
	];
	home.sessionVariables = {
		EDITOR = "nvim";
	};
	#users.users.jmacias8075.shell = pkgs.zsh;
	home.username = "jmacias8075";
	home.stateVersion = "24.05";
}
