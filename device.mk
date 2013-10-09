#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to ALL taurus devices, and
# are also specific to taurus devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/xiaomi/taurus/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Charger
PRODUCT_COPY_FILES += \
    device/xiaomi/taurus/chargeonlymode:root/sbin/chargeonlymode

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# RIL
PRODUCT_COPY_FILES += \
    device/xiaomi/taurus/libril.so:system/lib/libril.so

# Xiaomi App Store
PRODUCT_COPY_FILES += \
    device/xiaomi/taurus/libpatcher_jni.so:system/lib/libpatcher_jni.so

PRODUCT_COPY_FILES += \
    device/xiaomi/taurus/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/xiaomi/taurus/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    device/xiaomi/taurus/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

ifneq ($(BUILD_KERNEL),true)
PRODUCT_COPY_FILES += \
    device/xiaomi/taurus/kernel/adsprpc.ko:system/lib/modules/adsprpc.ko \
    device/xiaomi/taurus/kernel/bluetooth-power.ko:system/lib/modules/bluetooth-power.ko \
    device/xiaomi/taurus/kernel/eeprom_93cx6.ko:system/lib/modules/eeprom_93cx6.ko \
    device/xiaomi/taurus/kernel/evbug.ko:system/lib/modules/evbug.ko \
    device/xiaomi/taurus/kernel/exfat.ko:system/lib/modules/exfat.ko \
    device/xiaomi/taurus/kernel/gspca_main.ko:system/lib/modules/gspca_main.ko \
    device/xiaomi/taurus/kernel/ks8851.ko:system/lib/modules/ks8851.ko \
    device/xiaomi/taurus/kernel/lcd.ko:system/lib/modules/lcd.ko \
    device/xiaomi/taurus/kernel/mmc_block_test.ko:system/lib/modules/mmc_block_test.ko \
    device/xiaomi/taurus/kernel/mmc_test.ko:system/lib/modules/mmc_test.ko \
    device/xiaomi/taurus/kernel/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
    device/xiaomi/taurus/kernel/radio-iris-transport.ko:system/lib/modules/radio-iris-transport.ko \
    device/xiaomi/taurus/kernel/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/xiaomi/taurus/kernel/spidev.ko:system/lib/modules/spidev.ko \
    device/xiaomi/taurus/kernel/test-iosched.ko:system/lib/modules/test-iosched.ko \
    device/xiaomi/taurus/kernel/wlan.ko:system/lib/modules/wlan.ko
endif

PRODUCT_COPY_FILES += \
    device/xiaomi/taurus/configs/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/xiaomi/taurus/configs/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    device/xiaomi/taurus/thermald-taurus.conf:system/etc/thermald.conf

PRODUCT_COPY_FILES += \
    device/xiaomi/taurus/configs/init.taurus.rc:root/init.taurus.rc \
    device/xiaomi/taurus/configs/init.taurus.usb.rc:root/init.taurus.usb.rc \
    device/xiaomi/taurus/configs/init.recovery.taurus.rc:root/init.recovery.taurus.rc \
    device/xiaomi/taurus/configs/fstab.taurus:root/fstab.taurus \
    device/xiaomi/taurus/configs/ueventd.taurus.rc:root/ueventd.taurus.rc \
    device/xiaomi/taurus/configs/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/xiaomi/taurus/configs/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    device/xiaomi/taurus/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/xiaomi/taurus/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/xiaomi/taurus/configs/init.qcom.usb.sh:root/init.qcom.usb.sh

PRODUCT_COPY_FILES += \
    device/xiaomi/taurus/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/xiaomi/taurus/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/xiaomi/taurus/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    device/xiaomi/taurus/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/xiaomi/taurus/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh

PRODUCT_COPY_FILES += \
    device/xiaomi/taurus/bootanimation.zip:system/media/bootanimation.zip

# Prebuilt kl and kcm keymaps
PRODUCT_COPY_FILES += \
    device/xiaomi/taurus/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/xiaomi/taurus/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
    device/xiaomi/taurus/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
    device/xiaomi/taurus/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/xiaomi/taurus/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/xiaomi/taurus/keypad_8960_liquid.kl:system/usr/keylayout/keypad_8960_liquid.kl \
    device/xiaomi/taurus/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
    device/xiaomi/taurus/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
    device/xiaomi/taurus/sensor00fn1a.kl:system/usr/keylayout/sensor00fn1a.kl \
    device/xiaomi/taurus/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl \
    device/xiaomi/taurus/ft5x06.kl::system/usr/keylayout/ft5x06.kl

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# GPS configuration
PRODUCT_COPY_FILES += \
    device/xiaomi/taurus/configs/gps.conf:system/etc/gps.conf

# OpenGL ES 3.0
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# OpenGL ES 2.0
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    af.resampler.quality=255 \
    mpq.audio.decode=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.aries.power_profile=middle

# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
    Updater

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.mod_device=mi2a_ivan

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck

# QCOM Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer \
    libI420colorconvert \
    hwcomposer.msm8960 \
    gralloc.msm8960 \
    copybit.msm8960

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    tinymix

# BT
PRODUCT_PACKAGES += \
    hci_qcomm_init

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd

# Omx
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libstagefrighthw

# Light
PRODUCT_PACKAGES += \
    lights.msm8960

# NFC Support
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

PRODUCT_COPY_FILES += \
    device/xiaomi/taurus/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-qmi-1.so

PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnCdmaDevice=0 \
    ril.subscription.types=NV,RUIM

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.recordable.rgba8888=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sensors.wl_dis=true

# Qualcomm random numbers generated
PRODUCT_PACKAGES += qrngd

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    debug.composition.type=dyn \
    persist.hwc.mdpcomp.enable=true \
    debug.mdpcomp.logs=0

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# QCOM
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true

# USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Gps
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qmienabled=true

# Dual boot init
PRODUCT_PACKAGES += \
  dualboot_init

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

PRODUCT_COPY_FILES += \
    device/xiaomi/taurus/mount_ext4.sh:system/bin/mount_ext4.sh

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# This is the taurus-specific audio package
$(call inherit-product, frameworks/base/data/sounds/AudioPackage10.mk)
