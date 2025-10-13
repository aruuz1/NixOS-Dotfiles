{ config, pkgs,  ... }:

{
  users.users.YOURUSERNAME = {
    isNormalUser = true;
    description = "aruuz";
    extraGroups = [ "networkmanager" "wheel" "audio" "pipewire" ];
    packages = with pkgs; [];
  };
}
