#!/bin/sh

set -e

FWUP_CONFIG=$NERVES_DEFCONFIG_DIR/fwup.conf

# Create the itb file for U-Boot
cp "$NERVES_DEFCONFIG_DIR/trellis.its" "$BINARIES_DIR"
(cd "$BINARIES_DIR" && ../host/bin/mkimage -f trellis.its trellis.itb)

# Run the common post-image processing for nerves
$BR2_EXTERNAL_NERVES_PATH/board/nerves-common/post-createfs.sh $TARGET_DIR $FWUP_CONFIG
