{ config, pkgs, ... }:

{
  fileSystems."/mnt/games" = {
    device = "/dev/disk/by-uuid/22a241b7-cc0f-404a-b04b-d18d258e6259";
    fsType = "btrfs";
    options = [
      "defaults"
      "compress=zstd"
      "nofail"
    ];
  };

  fileSystems."/mnt/reinas" = {
    device = "//192.168.1.209/Medias";
    fsType = "cifs";
    options = [
      "credentials=/etc/samba/credentials"
      "uid=1000"
      "gid=100"
      "iocharset=utf8"
      "nofail"
      "x-systemd.automount"
    ];
  };

  environment.systemPackages = with pkgs; [
    cifs-utils
  ];
}
