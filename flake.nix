{
  description = "aruuz NIX flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    stylix.url = "github:danth/stylix";

    grub-theme.url = "github:aruuz1/MilkGrub";
    spicetify.url = "github:Gerg-L/spicetify-nix";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = {
    nixpkgs,
    stylix,
    home-manager,
    grub-theme,
    spicetify,
    nixvim,
    ...
  }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [
        ./configuration.nix
        inputs.grub-theme.nixosModule
      ];
    };
    homeConfigurations.aruuz = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
      modules = [
      ./home.nix
      stylix.homeModules.stylix
      spicetify.homeManagerModules.spicetify 
      inputs.nixvim.homeManagerModules.nixvim
      ];
    };
  };
}

