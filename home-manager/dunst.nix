{ config, pkgs, ... }:

{
  services.dunst = {
    enable = true;
    iconTheme = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
      size = "16x16";
    };

    settings = {
      global = {
        ### Display ###
        fullscreen = "show"; # show notification in fullscreen
        monitor = 0;
        follow = "mouse";
        width = 300;
        height = 300;
        origin = "top-right";
        offset = "10x50";
        scale = 0;
        notification_limit = 0;
        progress_bar = true;
        progress_bar_height = 10;
        progress_bar_frame_width = 1;
        progress_bar_min_width = 150;
        progress_bar_max_width = 300;
        indicate_hidden = "yes";
        transparency = 0;
        separator_height = 2;
        padding = 8;
        horizontal_padding = 8;
        text_icon_padding = 8;
        frame_width = 2;
        gap_size = 0;
        separator_color = "frame";
        sort = "yes";
        idle_threshold = 120;
        font = "Noto Sans 10";
        line_height = 0;
        markup = "full";
        format = "<b>%s</b>\n%b";
        alignment = "left";
        vertical_alignment = "center";
        show_age_threshold = 60;
        ellipsize = "middle";
        ignore_newline = "no";
        stack_duplicates = true;
        hide_duplicate_count = false;
        show_indicators = "yes";
        icon_position = "left";
        min_icon_size = 32;
        max_icon_size = 80;
        sticky_history = "yes";
        history_length = 20;
        browser = "${pkgs.firefox}/bin/firefox -new-tab";
        always_run_script = true;
        title = "Dunst";
        class = "Dunst";
        startup_notification = false;
        verbosity = "mesg";
        corner_radius = 8;

        ### Gruvbox Dark Hard Colors ###
        frame_color = "#2b628a";       # gruvbox bright orange (border)
        background = "#1d2021";        # gruvbox dark-hard bg
        foreground = "#ebdbb2";        # gruvbox light1 (text)
        timeout = 10;
      };

      urgency_low = {
        background = "#1d2021";        # gruvbox dark-hard bg
        foreground = "#a89984";        # gruvbox gray (text)
        frame_color = "#665c54";       # gruvbox gray (border)
        timeout = 4;
      };

      urgency_normal = {
        background = "#1d2021";        # gruvbox dark-hard bg
        foreground = "#ebdbb2";        # gruvbox light1 (text)
        frame_color = "#d79921";       # gruvbox yellow (border)
        timeout = 6;
      };

      urgency_critical = {
        background = "#1d2021";        # gruvbox dark-hard bg
        foreground = "#fb4934";        # gruvbox bright red (text)
        frame_color = "#cc241d";       # gruvbox red (border)
        timeout = 0;
      };

      fullscreen_delay_everything = { fullscreen = "delay"; };
    };
  };
}
