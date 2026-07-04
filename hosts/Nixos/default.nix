{ ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/boot.nix
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
