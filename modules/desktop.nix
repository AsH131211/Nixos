{ ... }:

{
  services.xserver.enable = true;

  services.displayManager.gdm.enable = false;


  services.desktopManager.gnome.enable = true;

  programs.niri.enable = true;
}
