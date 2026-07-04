{ ... }:

{
  services.xserver.enable = true;

  services.displayManager.gdm.enable = false;

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  services.desktopManager.gnome.enable = true;

  programs.niri.enable = true;
}
