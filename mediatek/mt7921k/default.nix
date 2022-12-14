{ lib, config, pkgs, ... }:

let

  kernelPackages = config.boot.kernelPackages;

in

# Support for the MediaTek MT7921K (RZ608) Wi-Fi card
lib.mkIf (lib.versionOlder kernelPackages.kernel.version "5.17") {
  boot.kernelModules = [ "mt7921e" ];
  services.udev.extraRules =
    ''SUBSYSTEM=="drivers", DEVPATH=="/bus/pci/drivers/mt7921e", ATTR{new_id}="14c3 0608"'';
}
