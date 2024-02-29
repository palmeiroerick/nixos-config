{
  description = "flake";
  inputs = {
    nixpkgs = {
      url = "github:NixOs/nixpkgs/nixos-23.11";
    };

    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };

    plugin-whichkey-nvim = {
      url = "github:folke/which-key.nvim";
      flake = false;
    };
  };
  outputs = {
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
