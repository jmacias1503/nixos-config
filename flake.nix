{
  description = "NixOS of jmacias8075";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
    url = "github:nix-community/home-manager";
    inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... } @ inputs:
  let
  	system = "x86_64-linux";
	pkgs = nixpkgs.legacyPackages.${system};
  in
  {

  	nixosConfigurations = {
		nixos = nixpkgs.lib.nixosSystem {
			extraSpecialArgs = { inherit inputs; };

			modules = [
				./nixos/configuration.nix
				inputs.home-manager.nixosModules.default
			];
		};
	};
  };
}
