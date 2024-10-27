{
  description = "NixOS of jmacias8075";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixstable.url = "github:nixos/nixpkgs?ref=nixos-24.05";
    home-manager = {
    url = "github:nix-community/home-manager/release-24.05";
    inputs.nixpkgs.follows = "nixstable";
    };
  };

  outputs = { self, nixpkgs, home-manager, nixvim, ... } @ inputs:
  let
  	system = "x86_64-linux";

	pkgs = import nixpkgs {
		inherit system;

		config = {
			allowUnfree = true;
		};
	};
	inherit (self) outputs;
  in
  {

  	nixosConfigurations = {
		nixos = nixpkgs.lib.nixosSystem {
			specialArgs = { inherit system inputs outputs; };

			modules = [
				./nixos/configuration.nix
			];
		};
	};
  };
}
