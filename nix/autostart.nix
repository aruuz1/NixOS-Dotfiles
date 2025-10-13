{ pkgs, ... }:

{
  services = { 
    displayManager = {
      defaultSession = "hyprland";
      autoLogin.enable = true;
      autoLogin.user = "aruuz";
      sddm = {
        enable = true;
        wayland.enable = true;
      };
    };
  };
  programs = {
    hyprland = {
      xwayland.enable = true;
      enable = true;
    };
  };
}
