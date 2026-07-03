{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Optional: newer packages when you need them
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, home-manager, nixpkgs-unstable, ... }:
  let
    system = "x86_64-linux";
  in {
    nixosConfigurations.Nixos = nixpkgs.lib.nixosSystem {
      inherit system;

      specialArgs = {
        inherit nixpkgs-unstable;
      };

       modules = [
         ./hosts/Nixos/default.nix

         home-manager.nixosModules.home-manager

         {
           home-manager.useGlobalPkgs = true;
           home-manager.useUserPackages = true;
  
           home-manager.users.ash = import ./home/ash.nix;
         }
      ];
    };
  };
}
