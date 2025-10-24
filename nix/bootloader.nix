{ config, ... }:
{
  boot.loader.systemd-boot.enable = false;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.loader.grub = {
    enable = true;
    device = "nodev";  # Важно для UEFI!
    efiSupport = true;
    gfxmodeEfi = "1920x1080";
    gfxpayloadEfi = "keep";
    milk-theme.enable = true;
  };
}
