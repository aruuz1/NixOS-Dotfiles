{ pkgs, ... }:
{
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/nova.yaml";
    targets = {
      kitty.enable = true;
      btop.enable = true;
      yazi.enable = true;
      hyprland.enable = true;
      cava.enable = true;
      cava.rainbow.enable = true;
      vesktop.enable = true;
      fzf.enable = true;
      spicetify.enable = true;

      dunst.enable = false;
      waybar.enable = false;
      rofi.enable = false;
    };
    cursor = {
     package = pkgs.bibata-cursors;
     name = "Bibata-Modern-Classic";
     size = 24;
    };
  };
}
