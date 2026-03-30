#!/bin/sh

# Seed the kernel entropy pool
/usr/sbin/rngd

# Load the ESP32 SDIO WiFi driver
# Options (resetpin, etc.) are picked up from /etc/modprobe.d/esp-hosted.conf
/sbin/modprobe esp32_sdio
