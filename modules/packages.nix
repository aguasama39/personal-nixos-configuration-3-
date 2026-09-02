{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    wget
    curl
    fastfetch
    pciutils
    nano
    kitty
    ffmpeg
    kdePackages.filelight
    kdePackages.partitionmanager
    cifs-utils
    unrar
    discord
    brave
    feishin
  ];

}
