{ pkgs, ... }:

let
  neontown = pkgs.stdenvNoCC.mkDerivation {
    pname = "neontown-sddm";
    version = "1.0";

    src = ../assets/sddm/neontown;

    dontConfigure = true;
    dontBuild = true;

    installPhase = ''
      mkdir -p $out/share/sddm/themes/neontown
      cp -r ./* $out/share/sddm/themes/neontown/
    '';
  };

  pixelNight = pkgs.stdenvNoCC.mkDerivation {
    pname = "pixel-night-city-sddm";
    version = "1.0";

    src = ../assets/sddm/pixel-night-city;

    dontConfigure = true;
    dontBuild = true;

    installPhase = ''
      mkdir -p $out/share/sddm/themes/pixel-night-city
      cp -r ./* $out/share/sddm/themes/pixel-night-city/
    '';
  };
in
{
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;

    theme = "neontown";

    extraPackages = [
      neontown
      pixelNight
    ];
  };
}
