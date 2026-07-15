{ ... }:

{
  imports = [
    ./programs/default.nix
    ./desktop/default.nix
  ];

  home.username = "ash";
  home.homeDirectory = "/home/ash";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

}
