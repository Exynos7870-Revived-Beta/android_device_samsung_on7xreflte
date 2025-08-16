# TWRP for the Samsung Galaxy On7 Prime

### How to build ###

```bash
# Create dirs
$ mkdir twrp ; cd twrp

# Init repo
$ repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0

# Clone my local repo
$ git clone https://github.com/Exynos7870-Revived-Beta/android_manifest_samsung_on7xreflte.git -b twrp .repo/local_manifests

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j`nproc`

# Build
$ source build/envsetup.sh ; lunch omni_on7xreflte-eng ; mka recoveryimage
```
## Credits
2020 @Astrako
2025 @Batuhantrkgl

## Contact
Telegram support group: @batuhan_s_builds_chat