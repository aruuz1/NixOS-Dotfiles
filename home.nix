{ config, pkgs, ... }:

{
  home = {
    username = "aruuz";
    homeDirectory = "/home/aruuz";
    stateVersion = "25.05";
  };
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
  imports = [
   ./home-manager/default.nix

  ];
}
