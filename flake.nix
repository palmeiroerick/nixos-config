{
  description = "flake";

  inputs = {
    nixpkgs = {
      url = "github:NixOs/nixpkgs/nixos-23.11";
    };
  };

  outputs = {
    self,
    nixpkgs,
    ...
  }:
  let 
    lib = nixpkgs.lib;
  in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
        ];
      };
    };
  };
}