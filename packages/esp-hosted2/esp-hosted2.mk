################################################################################
#
# esp-hosted
#
################################################################################

ESP_HOSTED2_VERSION = 1.0.6
ESP_HOSTED2_SITE = $(call github,espressif,esp-hosted,release/ng-$(ESP_HOSTED2_VERSION))
ESP_HOSTED2_SOURCE = ng-v$(ESP_HOSTED2_VERSION).tar.gz
ESP_HOSTED2_DEPENDENCIES = linux
ESP_HOSTED2_LICENSE = GPL-2.0
ESP_HOSTED2_LICENSE_FILES = esp_hosted_ng/host/LICENSE
ESP_HOSTED2_MODULE_SUBDIRS = esp_hosted_ng/host

define ESP_HOSTED2_LINUX_CONFIG_FIXUPS
	$(call KCONFIG_ENABLE_OPT,CONFIG_NET)
	$(call KCONFIG_ENABLE_OPT,CONFIG_WIRELESS)
	$(call KCONFIG_ENABLE_OPT,CONFIG_CFG80211)
	$(call KCONFIG_ENABLE_OPT,CONFIG_MAC80211)
	$(call KCONFIG_ENABLE_OPT,CONFIG_BT)
	$(if $(BR2_PACKAGE_ESP_HOSTED_SPI),
		$(call KCONFIG_ENABLE_OPT,CONFIG_SPI),
		$(call KCONFIG_ENABLE_OPT,CONFIG_MMC))
endef

ifeq ($(BR2_PACKAGE_ESP_HOSTED_SPI),y)
ESP_HOSTED2_MODULE_MAKE_OPTS = target=spi
else
ESP_HOSTED2_MODULE_MAKE_OPTS = target=sdio
endif

$(eval $(kernel-module))
$(eval $(generic-package))
