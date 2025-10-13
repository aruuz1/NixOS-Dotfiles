{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./nix/nvidia.nix
      ./nix/autostart.nix
      ./nix/flakes.nix
      ./nix/locale.nix
      ./nix/groups.nix
      ./nix/pipewire.nix
      ./nix/pkgs.nix
      ./nix/bootloader.nix
    ];

  system.stateVersion = "25.05";
}
