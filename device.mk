$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The GPS configuration appropriate for this device.
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

$(call inherit-product, vendor/huawei/u8800pro/u8800pro-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8800pro/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

ifdef HUAWEI_109808_BASEBAND
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril.v3=skipsuggestedretrytime
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.forbid_format=/boot,/cust,/fat

# Video
PRODUCT_PACKAGES += \
    libI420colorconvert \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer

# Audio
PRODUCT_PACKAGES += \
    audio.primary.u8800pro \
    audio_policy.u8800pro \
    audio.a2dp.default \
    audio.usb.default \
    libaudioutils

# Other HALs
PRODUCT_PACKAGES += \
    power.msm7x27a \
    gps.u8800pro \
    lights.u8800pro

# Other Packages
PRODUCT_PACKAGES += \
    libgenlock \
    setbtmac \
    setwifimac \
    dexpreopt \
    make_ext4fs \
    setup_fs \
    Torch \
    com.android.future.usb.accessory 

PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/ramdisk/init.huawei.rc:root/init.huawei.rc \
    device/huawei/u8800pro/ramdisk/ueventd.huawei.rc:root/ueventd.huawei.rc \
    device/huawei/u8800pro/ramdisk/init.huawei.usb.rc:root/init.huawei.usb.rc

PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8800pro/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/huawei/u8800pro/configs/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8800pro/configs/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/u8800pro/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/huawei/u8800pro/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/u8800pro/configs/libcm.sh:system/etc/libcm.sh \
    device/huawei/u8800pro/configs/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/u8800pro/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/huawei/u8800pro/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/huawei/u8800pro/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/huawei/u8800pro/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/huawei/u8800pro/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/u8800pro/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/u8800pro/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/huawei/u8800pro/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml


PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := huawei_u8800pro
PRODUCT_DEVICE := u8800pro
PRODUCT_BRAND := Huawei
