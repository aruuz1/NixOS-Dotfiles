{
  imports = [
    ./config/default.nix
  ];
  wayland = {
    windowManager = {
      hyprland = {
        enable = true;
        xwayland.enable = true;
      };
    };
  };
}
