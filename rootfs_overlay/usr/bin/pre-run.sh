#!/bin/sh

# Seed the kernel entropy pool
/usr/sbin/rngd

# Load the ESP32 SDIO WiFi driver
# Options (resetpin, etc.) are picked up from /etc/modprobe.d/esp-hosted.conf
/sbin/modprobe esp32_sdio

# Configure wlan0 activity LED (PD17)
echo wlan0 > /sys/class/leds/:wlan/device_name
echo 1 > /sys/class/leds/:wlan/tx
echo 1 > /sys/class/leds/:wlan/rx
