{
  description = "flake";
  inputs = {
    nixpkgs = {
      url = "github:NixOs/nixpkgs/24.05";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    homeConfigurations = {
      erick = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./home
        ];
        extraSpecialArgs = {inherit inputs;};
      };
    };
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;
        modules = [
          ./nixos
        ];
      };
    };
  };
}
