# Changelog

This project does NOT follow semantic versioning. The version increases as
follows:

1. Major version updates are breaking updates to the build infrastructure.
   These should be very rare.
2. Minor version updates are made for every major Buildroot release. This
   may also include Erlang/OTP and Linux kernel updates. These are made four
   times a year shortly after the Buildroot releases.
3. Patch version updates are made for Buildroot minor releases, Erlang/OTP
   releases, and Linux kernel updates. They're also made to fix bugs and add
   features to the build infrastructure.

## v0.3.0

Third prototype Bringup release

* Enable BlueZ
* Enable RTL WiFi

## v0.2.0

Second prototype Bringup release

* Enable ledc
* Enable temporary rtl wifi driver
* Enable kernel bluetooth
* Enable ipv6

## v0.1.0

This is the initial release.

* WiFi+BT does not work yet. next pcb revision required for brcmfmac.
* PWM works, leds in device tree. likely will change.
* LEDC works, leds in device tree. likely will change.
* user input configured but not tested.
* linux v6.7.1
* uboot 2024.04-rc4
* nerves_system_br v1.27.0
