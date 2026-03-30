# Override esp-hosted download settings
#
# The upstream Buildroot package uses tag "release/ng-v<version>" but the
# actual GitHub tag is "release/ng-<version>" (no "v" prefix).
# Fix the SITE and SOURCE to match the real tag.

ESP_HOSTED_SITE = https://github.com/espressif/esp-hosted/archive/release
ESP_HOSTED_SOURCE = ng-$(ESP_HOSTED_VERSION).tar.gz
