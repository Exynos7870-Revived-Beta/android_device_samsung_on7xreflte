TWRP_DEVICE="on7xreflte"

# Common
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"

export LZMA_RAMDISK_TARGETS="recovery"
export PLATFORM_SECURITY_PATCH="2099-12-31"
export PLATFORM_VERSION="12.1.0"

add_lunch_combo twrp_"$TWRP_DEVICE"-eng