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
    proton-vpn-cli
    gearlever
    nicotine-plus
    feishin
    pavucontrol
    fladder
  ];

}
