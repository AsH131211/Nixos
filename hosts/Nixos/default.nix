{ ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/boot.nix
    ../../modules/stylix.nix
    ../../modules/sddm.nix
    ../../modules/graphics.nix
    ../../modules/networking.nix
    ../../modules/locale.nix
    ../../modules/desktop.nix
    ../../modules/audio.nix
    ../../modules/users.nix
    ../../modules/packages.nix
    ../../modules/services.nix
    ../../modules/nix.nix
    ../../modules/security.nix
    ../../modules/fonts.nix
  ];
}
