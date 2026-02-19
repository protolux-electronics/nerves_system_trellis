# Trellis (Allwinner T113-S4)

[![Hex version](https://img.shields.io/hexpm/v/nerves_system_trellis.svg "Hex version")](https://hex.pm/packages/nerves_system_trellis)

This is the base Nerves System configuration for the [Trellis Core](https://github.com/protolux-electronics/trellis_core) board,
built around the Allwinner T113-S4 SoC.

| Feature              | Trellis Core                    | Wisteria                        |
| -------------------- | ------------------------------- | ------------------------------- |
| CPU                  | 1.2 GHz dual-core Cortex-A7 (ARMv7) | same                       |
| Memory               | 256 MB DDR3                     | same                            |
| Storage              | Onboard eMMC flash              | same                            |
| Linux kernel         | 6.12 w/ patches                 | same                            |
| IEx terminal         | UART `ttyS4`                    | same                            |
| GPIO, I2C, SPI       | Yes - [Elixir Circuits](https://github.com/elixir-circuits) | same |
| PWM                  | 8 channels                      | same                            |
| UART                 | ttyS4                           | same                            |
| Display              | No                              | 4.2" e-ink                      |
| WiFi                 | No                              | Yes - [VintageNet](https://github.com/nerves-networking/vintage_net) |
| CAN bus              | Yes                             | same                            |
| USB                  | USB OTG + USB Host              | same                            |
| Battery              | No                              | Yes (~8 hours runtime)          |
| HW Watchdog          | Yes                             | same                            |
| HW Crypto            | Yes                             | same                            |

## Using

The most common way of creating a Nerves project using this system is to run
`mix nerves.new my_app` and export `MIX_TARGET=trellis`. See the [Getting
started guide](https://hexdocs.pm/nerves/getting-started.html) for more
information.

If you need custom modifications to this system for your device, see the
[Nerves documentation on customizing
systems](https://hexdocs.pm/nerves/customizing-systems.html).

## Provisioning

This system supports the Nerves key-value store for provisioning information.
Provisioning values can be set using the
[`boardid`](https://github.com/nerves-project/boardid) tool or `Nerves.Runtime.KV`.

## Linux kernel

The Linux kernel is built from the mainline 6.12 release with patches for the
Allwinner T113-S4. The default kernel configuration is in `linux_defconfig`.

## Wisteria

The [Wisteria](https://github.com/protolux-electronics/wisteria_hardware) is a
Nerves-powered e-ink name badge built on the Trellis Core. It was developed for
the Goatmire Conference.

## Special Thanks

Thank you to Connor Rigby who laid down the base for this repo.
