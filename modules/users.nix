{ pkgs, ... }:

{
  users.users.ash = {
    isNormalUser = true;
    description = "AsH";

    shell = pkgs.fish;

    extraGroups = [
      "networkmanager"
      "wheel"
    ];

    packages = with pkgs; [
      # User-specific packages go here
    ];
  };

  programs.fish.enable = true;
}
