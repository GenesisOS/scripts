#!/bin/bash

# Source the build environment setup script
source build/envsetup.sh

# Select the build configuration
lunch genesis_device-ap1a-user

# Build the target files package and otatools
m target-files-package otatools

# Change root to the top of the tree
croot 

# Sign the target files and APKs
sign_target_files_apks -o -d ~/.android-certs \
    --extra_apks AdServicesApk.apk=$HOME/.android-certs/releasekey \
    --extra_apks HalfSheetUX.apk=$HOME/.android-certs/releasekey \
    --extra_apks OsuLogin.apk=$HOME/.android-certs/releasekey \
    --extra_apks SafetyCenterResources.apk=$HOME/.android-certs/releasekey \
    --extra_apks ServiceConnectivityResources.apk=$HOME/.android-certs/releasekey \
    --extra_apks ServiceUwbResources.apk=$HOME/.android-certs/releasekey \
    --extra_apks ServiceWifiResources.apk=$HOME/.android-certs/releasekey \
    --extra_apks WifiDialog.apk=$HOME/.android-certs/releasekey \
    --extra_apks com.android.adbd.apex=$HOME/.android-certs/com.android.adbd \
    --extra_apks com.android.adservices.apex=$HOME/.android-certs/com.android.adservices \
    --extra_apks com.android.adservices.api.apex=$HOME/.android-certs/com.android.adservices.api \
    --extra_apks com.android.appsearch.apex=$HOME/.android-certs/com.android.appsearch \
    --extra_apks com.android.art.apex=$HOME/.android-certs/com.android.art \
    --extra_apks com.android.bluetooth.apex=$HOME/.android-certs/com.android.bluetooth \
    --extra_apks com.android.btservices.apex=$HOME/.android-certs/com.android.btservices \
    --extra_apks com.android.cellbroadcast.apex=$HOME/.android-certs/com.android.cellbroadcast \
    --extra_apks com.android.compos.apex=$HOME/.android-certs/com.android.compos \
    --extra_apks com.android.configinfrastructure.apex=$HOME/.android-certs/com.android.configinfrastructure \
    --extra_apks com.android.connectivity.resources.apex=$HOME/.android-certs/com.android.connectivity.resources \
    --extra_apks com.android.conscrypt.apex=$HOME/.android-certs/com.android.conscrypt \
    --extra_apks com.android.devicelock.apex=$HOME/.android-certs/com.android.devicelock \
    --extra_apks com.android.extservices.apex=$HOME/.android-certs/com.android.extservices \
    --extra_apks com.android.graphics.pdf.apex=$HOME/.android-certs/com.android.graphics.pdf \
    --extra_apks com.android.hardware.biometrics.face.virtual.apex=$HOME/.android-certs/com.android.hardware.biometrics.face.virtual \
    --extra_apks com.android.hardware.biometrics.fingerprint.virtual.apex=$HOME/.android-certs/com.android.hardware.biometrics.fingerprint.virtual \
    --extra_apks com.android.hardware.boot.apex=$HOME/.android-certs/com.android.hardware.boot \
    --extra_apks com.android.hardware.cas.apex=$HOME/.android-certs/com.android.hardware.cas \
    --extra_apks com.android.hardware.wifi.apex=$HOME/.android-certs/com.android.hardware.wifi \
    --extra_apks com.android.healthfitness.apex=$HOME/.android-certs/com.android.healthfitness \
    --extra_apks com.android.hotspot2.osulogin.apex=$HOME/.android-certs/com.android.hotspot2.osulogin \
    --extra_apks com.android.i18n.apex=$HOME/.android-certs/com.android.i18n \
    --extra_apks com.android.ipsec.apex=$HOME/.android-certs/com.android.ipsec \
    --extra_apks com.android.media.apex=$HOME/.android-certs/com.android.media \
    --extra_apks com.android.media.swcodec.apex=$HOME/.android-certs/com.android.media.swcodec \
    --extra_apks com.android.mediaprovider.apex=$HOME/.android-certs/com.android.mediaprovider \
    --extra_apks com.android.nearby.halfsheet.apex=$HOME/.android-certs/com.android.nearby.halfsheet \
    --extra_apks com.android.networkstack.tethering.apex=$HOME/.android-certs/com.android.networkstack.tethering \
    --extra_apks com.android.neuralnetworks.apex=$HOME/.android-certs/com.android.neuralnetworks \
    --extra_apks com.android.ondevicepersonalization.apex=$HOME/.android-certs/com.android.ondevicepersonalization \
    --extra_apks com.android.os.statsd.apex=$HOME/.android-certs/com.android.os.statsd \
    --extra_apks com.android.permission.apex=$HOME/.android-certs/com.android.permission \
    --extra_apks com.android.resolv.apex=$HOME/.android-certs/com.android.resolv \
    --extra_apks com.android.rkpd.apex=$HOME/.android-certs/com.android.rkpd \
    --extra_apks com.android.runtime.apex=$HOME/.android-certs/com.android.runtime \
    --extra_apks com.android.safetycenter.resources.apex=$HOME/.android-certs/com.android.safetycenter.resources \
    --extra_apks com.android.scheduling.apex=$HOME/.android-certs/com.android.scheduling \
    --extra_apks com.android.sdkext.apex=$HOME/.android-certs/com.android.sdkext \
    --extra_apks com.android.support.apexer.apex=$HOME/.android-certs/com.android.support.apexer \
    --extra_apks com.android.telephony.apex=$HOME/.android-certs/com.android.telephony \
    --extra_apks com.android.telephonymodules.apex=$HOME/.android-certs/com.android.telephonymodules \
    --extra_apks com.android.tethering.apex=$HOME/.android-certs/com.android.tethering \
    --extra_apks com.android.tzdata.apex=$HOME/.android-certs/com.android.tzdata \
    --extra_apks com.android.uwb.apex=$HOME/.android-certs/com.android.uwb \
    --extra_apks com.android.uwb.resources.apex=$HOME/.android-certs/com.android.uwb.resources \
    --extra_apks com.android.virt.apex=$HOME/.android-certs/com.android.virt \
    --extra_apks com.android.vndk.current.apex=$HOME/.android-certs/com.android.vndk.current \
    --extra_apks com.android.vndk.current.on_vendor.apex=$HOME/.android-certs/com.android.vndk.current.on_vendor \
    --extra_apks com.android.wifi.apex=$HOME/.android-certs/com.android.wifi \
    --extra_apks com.android.wifi.dialog.apex=$HOME/.android-certs/com.android.wifi.dialog \
    --extra_apks com.android.wifi.resources.apex=$HOME/.android-certs/com.android.wifi.resources \
    --extra_apks com.google.pixel.camera.hal.apex=$HOME/.android-certs/com.google.pixel.camera.hal \
    --extra_apks com.google.pixel.vibrator.hal.apex=$HOME/.android-certs/com.google.pixel.vibrator.hal \
    --extra_apex_payload_key com.android.adbd.apex=$HOME/.android-certs/com.android.adbd.pem \
    --extra_apex_payload_key com.android.adservices.apex=$HOME/.android-certs/com.android.adservices.pem \
    --extra_apex_payload_key com.android.adservices.api.apex=$HOME/.android-certs/com.android.adservices.api.pem \
    --extra_apex_payload_key com.android.appsearch.apex=$HOME/.android-certs/com.android.appsearch.pem \
    --extra_apex_payload_key com.android.art.apex=$HOME/.android-certs/com.android.art.pem \
    --extra_apex_payload_key com.android.bluetooth.apex=$HOME/.android-certs/com.android.bluetooth.pem \
    --extra_apex_payload_key com.android.btservices.apex=$HOME/.android-certs/com.android.btservices.pem \
    --extra_apex_payload_key com.android.cellbroadcast.apex=$HOME/.android-certs/com.android.cellbroadcast.pem \
    --extra_apex_payload_key com.android.compos.apex=$HOME/.android-certs/com.android.compos.pem \
    --extra_apex_payload_key com.android.configinfrastructure.apex=$HOME/.android-certs/com.android.configinfrastructure.pem \
    --extra_apex_payload_key com.android.connectivity.resources.apex=$HOME/.android-certs/com.android.connectivity.resources.pem \
    --extra_apex_payload_key com.android.conscrypt.apex=$HOME/.android-certs/com.android.conscrypt.pem \
    --extra_apex_payload_key com.android.devicelock.apex=$HOME/.android-certs/com.android.devicelock.pem \
    --extra_apex_payload_key com.android.extservices.apex=$HOME/.android-certs/com.android.extservices.pem \
    --extra_apex_payload_key com.android.graphics.pdf.apex=$HOME/.android-certs/com.android.graphics.pdf.pem \
    --extra_apex_payload_key com.android.hardware.biometrics.face.virtual.apex=$HOME/.android-certs/com.android.hardware.biometrics.face.virtual.pem \
    --extra_apex_payload_key com.android.hardware.biometrics.fingerprint.virtual.apex=$HOME/.android-certs/com.android.hardware.biometrics.fingerprint.virtual.pem \
    --extra_apex_payload_key com.android.hardware.boot.apex=$HOME/.android-certs/com.android.hardware.boot.pem \
    --extra_apex_payload_key com.android.hardware.cas.apex=$HOME/.android-certs/com.android.hardware.cas.pem \
    --extra_apex_payload_key com.android.hardware.wifi.apex=$HOME/.android-certs/com.android.hardware.wifi.pem \
    --extra_apex_payload_key com.android.healthfitness.apex=$HOME/.android-certs/com.android.healthfitness.pem \
    --extra_apex_payload_key com.android.hotspot2.osulogin.apex=$HOME/.android-certs/com.android.hotspot2.osulogin.pem \
    --extra_apex_payload_key com.android.i18n.apex=$HOME/.android-certs/com.android.i18n.pem \
    --extra_apex_payload_key com.android.ipsec.apex=$HOME/.android-certs/com.android.ipsec.pem \
    --extra_apex_payload_key com.android.media.apex=$HOME/.android-certs/com.android.media.pem \
    --extra_apex_payload_key com.android.media.swcodec.apex=$HOME/.android-certs/com.android.media.swcodec.pem \
    --extra_apex_payload_key com.android.mediaprovider.apex=$HOME/.android-certs/com.android.mediaprovider.pem \
    --extra_apex_payload_key com.android.nearby.halfsheet.apex=$HOME/.android-certs/com.android.nearby.halfsheet.pem \
    --extra_apex_payload_key com.android.networkstack.tethering.apex=$HOME/.android-certs/com.android.networkstack.tethering.pem \
    --extra_apex_payload_key com.android.neuralnetworks.apex=$HOME/.android-certs/com.android.neuralnetworks.pem \
    --extra_apex_payload_key com.android.ondevicepersonalization.apex=$HOME/.android-certs/com.android.ondevicepersonalization.pem \
    --extra_apex_payload_key com.android.os.statsd.apex=$HOME/.android-certs/com.android.os.statsd.pem \
    --extra_apex_payload_key com.android.permission.apex=$HOME/.android-certs/com.android.permission.pem \
    --extra_apex_payload_key com.android.resolv.apex=$HOME/.android-certs/com.android.resolv.pem \
    --extra_apex_payload_key com.android.rkpd.apex=$HOME/.android-certs/com.android.rkpd.pem \
    --extra_apex_payload_key com.android.runtime.apex=$HOME/.android-certs/com.android.runtime.pem \
    --extra_apex_payload_key com.android.safetycenter.resources.apex=$HOME/.android-certs/com.android.safetycenter.resources.pem \
    --extra_apex_payload_key com.android.scheduling.apex=$HOME/.android-certs/com.android.scheduling.pem \
    --extra_apex_payload_key com.android.sdkext.apex=$HOME/.android-certs/com.android.sdkext.pem \
    --extra_apex_payload_key com.android.support.apexer.apex=$HOME/.android-certs/com.android.support.apexer.pem \
    --extra_apex_payload_key com.android.telephony.apex=$HOME/.android-certs/com.android.telephony.pem \
    --extra_apex_payload_key com.android.telephonymodules.apex=$HOME/.android-certs/com.android.telephonymodules.pem \
    --extra_apex_payload_key com.android.tethering.apex=$HOME/.android-certs/com.android.tethering.pem \
    --extra_apex_payload_key com.android.tzdata.apex=$HOME/.android-certs/com.android.tzdata.pem \
    --extra_apex_payload_key com.android.uwb.apex=$HOME/.android-certs/com.android.uwb.pem \
    --extra_apex_payload_key com.android.uwb.resources.apex=$HOME/.android-certs/com.android.uwb.resources.pem \
    --extra_apex_payload_key com.android.virt.apex=$HOME/.android-certs/com.android.virt.pem \
    --extra_apex_payload_key com.android.vndk.current.apex=$HOME/.android-certs/com.android.vndk.current.pem \
    --extra_apex_payload_key com.android.vndk.current.on_vendor.apex=$HOME/.android-certs/com.android.vndk.current.on_vendor.pem \
    --extra_apex_payload_key com.android.wifi.apex=$HOME/.android-certs/com.android.wifi.pem \
    --extra_apex_payload_key com.android.wifi.dialog.apex=$HOME/.android-certs/com.android.wifi.dialog.pem \
    --extra_apex_payload_key com.android.wifi.resources.apex=$HOME/.android-certs/com.android.wifi.resources.pem \
    --extra_apex_payload_key com.google.pixel.camera.hal.apex=$HOME/.android-certs/com.google.pixel.camera.hal.pem \
    --extra_apex_payload_key com.google.pixel.vibrator.hal.apex=$HOME/.android-certs/com.google.pixel.vibrator.hal.pem \
    --extra_apex_payload_key com.qorvo.uwb.apex=$HOME/.android-certs/com.qorvo.uwb.pem \
    $OUT/obj/PACKAGING/target_files_intermediates/*-target_files*.zip \
    signed-target_files.zip

# Create OTA update package from signed target files
ota_from_target_files -k ~/.android-certs/releasekey \
    --block --backup=true \
    signed-target_files.zip \
    signed-ota_update.zip
