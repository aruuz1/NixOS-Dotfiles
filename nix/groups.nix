{ config, pkgs,  ... }:

{
  users.users.aruuz = {
    isNormalUser = true;
    description = "aruuz";
    extraGroups = [ "networkmanager" "wheel" "audio" "pipewire" ];
    packages = with pkgs; [];
  };
}
