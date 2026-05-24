{
  description = "nixos build";
 
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  
  outputs = { self, nixpkgs }; {
    nixosConfigurations.nixos-btw = nixpkgs.lib.nixosSystem {
      system = "x84_64-linux";
      modules = [
         ./configuration.nix
      ];
    };
  };
} 
