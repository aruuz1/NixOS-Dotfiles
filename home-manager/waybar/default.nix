{
  waybar,
  pkgs,
  ...
}: {
  programs.waybar = {
    enable = true;

    style = builtins.readFile ./style.css;

    settings = [
      {
        layer = "top";
        margin-top = 0;
        margin-bottom = 0;
        margin-left = 0;
        margin-right = 0;
        spacing = 0;

        modules-left = [
          "hyprland/workspaces"
          "tray"
        ];

        modules-center = [
          "cava"
        ];

        modules-right = [
          "clock"
        ];

        "hyprland/workspaces" = {
          active-only = false;
          disable-scroll = false;
          all-outputs = true;
          format = "{icon}";
          on-click = "activate";

          persistent-workspaces = {
          "1" = [ ];
          "2" = [ ];
          "3" = [ ];
          "4" = [ ];
          "5" = [ ];
          "6" = [ ];
          };

        };

        cava = {
          format-icons = ["▁" "▂" "▃" "▄" "▅" "▆" "▇" "█"];
          bar_delimiter = 0;
          method = "pipewire";
          noise_reduction = 0.77;
          input_delay = 5;
          bars = 24;
        };



        tray = {
          icon-size = 21;
          spacing = 10;
        };

       pulseaudio = {
          format = "{icon} {volume}%";
          format-bluetooth = "{volume}%  {icon} {format_source}";
          format-icons = {
            headphone = " ";
            hands-free = " ";
            headset = " ";
            phone = " ";
            portable = " ";
            car = " ";
            default = [" " " " " "];
          };
          on-click = "kitty alsamixer";
        };
      }
    ];
  };
}
