{ ... }:

{
  # Enable X11
  services.xserver.enable = true;

  # Display Manager (we'll change to SDDM later)
  services.displayManager.gdm.enable = true;

  # GNOME Desktop
  services.desktopManager.gnome.enable = true;

  # Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  # Firefox
  programs.firefox.enable = false;
}
