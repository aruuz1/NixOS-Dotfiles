{ config, pkgs, ... }:

{
  home = {
    username = "YOURUSERNAME";
    homeDirectory = "/home/YOURDIRECTORY";
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
