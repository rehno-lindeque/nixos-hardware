# Gigabyte B550I AORUS PRO AX

## Networking

Linux kernel's driver module mt7921e is needed for this card. Unfortunately this mediatek card's id isn't currently being detected with stable Linux kernel 5.15.

A workaround is implemented if linux version < 5.17 is used in your configuration.

## Hardware probes

Hardware probes generated with `nix run nixpkgs#hw-probe -- -all -upload`:

* Probe [#]() of Gigabyte B550I AORUS PRO AX

## Additional resources

* [Kernel patch for automatically detecting the mediatek card](https://patchwork.kernel.org/project/linux-wireless/patch/84ab45bf42f57fd0301c156ffc11d0fe330ff1f8.1636857817.git.deren.wu@mediatek.com/)
