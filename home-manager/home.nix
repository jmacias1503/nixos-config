{config, pkgs, ...}:
let
in
{
	imports = [
		./modules/shell.nix
		./modules/nixvim.nix
	];

	nixpkgs.config.allowUnfree = true;
	home.packages  = with pkgs; [
		bluedevil
		cmus
		fastfetch
		gimp
		gnupg
		inkscape
		libreoffice
		qrcp
		signal-desktop
		whatsapp-for-linux
		zoom-us
		zsh
	];
	programs.nixvim.enable = true;
	home.sessionVariables = {
		EDITOR = "nvim";
	};
	#users.users.jmacias8075.shell = pkgs.zsh;
	home.username = "jmacias8075";
	home.stateVersion = "24.05";
}
