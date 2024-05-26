# Generating the keys:
On root directory of your rom, run:

    git clone https://github.com/GenesisOS/scripts.git -b utopia-2.0 scripts
    chmod +x scripts/generate_certs.sh
    ./scripts/generate_certs.sh

## Generating the APEX keys:
You will need to the leave the passphrase blank and press Enter to generate keys without password.

    It will display something like this:
    Enter password for '/home/baka_hokage/.android-certs/bluetooth' (blank for none; password will be visible):

# Building & Signing the build:
### NOTE: Make sure to change device name in build_and_sign.sh (line no. 7)
On root directory of your rom, run:

    git clone https://github.com/GenesisOS/scripts.git -b utopia-2.0 scripts
    chmod +x scripts/build_and_sign.sh
    ./scripts/build_and_sign.sh

# Credits:
- [AOSP](https://source.android.com/devices/tech/ota/sign_builds)
- [LineageOS](https://wiki.lineageos.org/signing_builds)
