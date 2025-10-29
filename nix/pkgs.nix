{ config, pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  services = {
    flatpak.enable = true;
  
  };

  programs = {
    firefox.enable = true;
    firejail.enable = true;
    steam.enable = true;
      nekoray = {
         enable = true;
         tunMode.enable = true;
      };
  };

  environment.systemPackages = with pkgs; [
    vim
    wl-clipboard
    simplex-chat-desktop
    python313
    element-desktop
    chromium
    cowsay
    wine
    obs-studio
    steam
    qbittorrent
    pstree
    unrar
    playerctl
    gamemode
    sl
    tty-clock
    home-manager
    kitty
    rofi
    git
    nftables
    vesktop
    firefox
    alsa-utils
    wireplumber
    pavucontrol
    dconf
    btop
    neofetch
    cava
    cmatrix
    pipes
    mangohud
    waybar
    yazi
    waypaper
    fluffychat
    swww
    bibata-cursors
    ayugram-desktop
    zsh
    oh-my-zsh
    zoxide
    eza
    spotify
    nekoray
    zip
    unzip
    fastfetch
    grimblast
    grim
    slurp
    anydesk
    dunst
    prismlauncher
    nemo
    flatpak
    firejail
    microfetch
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    nerd-fonts.hack
    dejavu_fonts
  ];
}
