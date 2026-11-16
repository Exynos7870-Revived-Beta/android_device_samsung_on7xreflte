# TWRP for the Samsung Galaxy J7 Prime Refreshed

TWRP device tree for Samsung Galaxy J7 Prime Refreshed (`on7xreflte`), based on the TWRP AOSP 12.1 manifest.

## Build
```bash
source build/envsetup.sh
lunch twrp_on7xreflte-eng
mka recoveryimage
```
The recovery image is `out/target/product/on7xreflte/recovery.img`.
