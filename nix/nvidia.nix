{ config, ... }:

{

  hardware.graphics.enable = true;
  hardware.nvidia = {
    modesetting.enable = true;
    open = false;
    nvidiaSettings = true;

    package = config.boot.kernelPackages.nvidiaPackages.latest;
  };

  services = {
    xserver = {
      videoDrivers = [ "nvidia" ];
    };
  };
}
