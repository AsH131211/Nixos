{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [

    # Editors & Terminal
    vim
    kitty
    fish
    gedit

    # Networking
    wget
    curl
    git
    networkmanagerapplet
    wifitui

    # Browser
    brave

    # Wayland / Hyprland
    waybar
    fuzzel
    mako
    swaybg
    swayidle
    swaylock
    wlogout
    waypaper
    wl-clipboard
    grim
    slurp

    # Utilities
    brightnessctl
    playerctl
    fastfetch
    btop
    unzip
    zip
    p7zip
    file
    tree
    yazi
    eza

    # Development
    vscode
    github-cli
    gcc
    python3

    # ASUS
    asusctl
    supergfxctl

    # GPU
    nvitop
    #nvtopPackages.nvidia
  ];
}
