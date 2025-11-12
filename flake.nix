{
	description = "Nixos config flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		kwin-effects-forceblur = {
			url = "github:taj-ny/kwin-effects-forceblur";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { self, nixpkgs, home-manager, ... }@inputs: 
		let 
		username = "zedzee";
	system = "x86_64-linux";
	in 
	{
		nixosConfigurations.zedtop = nixpkgs.lib.nixosSystem {
			specialArgs = {inherit inputs;};
			modules = [
				./hosts/default/configuration.nix
					home-manager.nixosModules.home-manager
					{
						home-manager.extraSpecialArgs = { inherit inputs; };
						home-manager.useGlobalPkgs = true;
						home-manager.useUserPackages = true;

						home-manager.users = {
							zedzee = import ./hosts/default/home.nix;
						};
					}
			];
		};
	};
}
