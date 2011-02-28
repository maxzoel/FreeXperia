# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/se/x8/x8-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/se/x8/overlay

# HAL libs and other system binaries
PRODUCT_PACKAGES += \
    gps.shakira \
    lights.shakira \
    copybit.shakira \
    gralloc.shakira \
    libOmxCore

# Extra apps
PRODUCT_PACKAGES += \
	Torch

#ifeq ($(TARGET_PREBUILT_KERNEL),)
#    LOCAL_KERNEL := device/commtiva/z71/kernel
#else
#    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel


# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni
#    LiveWallpapers \
#    MagicSmokeWallpapers \
#    VisualizationWallpapers \

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Board-specific init
PRODUCT_COPY_FILES += \
    device/se/x8/ueventd.qct.rc:root/ueventd.qct.rc \
    device/se/x8/init.qcom.rc:root/init.qcom.rc

## RIL related stuff
PRODUCT_COPY_FILES += \
    vendor/se/x8/proprietary/bin/port-bridge:system/bin/port-bridge \
    vendor/se/x8/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/se/x8/proprietary/lib/libauth.so:system/lib/libauth.so \
    vendor/se/x8/proprietary/lib/libcm.so:system/lib/libcm.so \
    vendor/se/x8/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    vendor/se/x8/proprietary/lib/libdll.so:system/lib/libdll.so \
    vendor/se/x8/proprietary/lib/libdss.so:system/lib/libdss.so \
    vendor/se/x8/proprietary/lib/libdsm.so:system/lib/libdsm.so \
    vendor/se/x8/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/se/x8/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/se/x8/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/se/x8/proprietary/lib/libnv.so:system/lib/libnv.so \
    vendor/se/x8/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    vendor/se/x8/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/se/x8/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/se/x8/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    vendor/se/x8/proprietary/lib/libqueue.so:system/lib/libqueue.so \
    vendor/se/x8/proprietary/lib/libril.so:system/lib/libril.so \
    vendor/se/x8/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/se/x8/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/se/x8/proprietary/lib/libwmsts.so:system/lib/libwmsts.so 


## OMX proprietaries
PRODUCT_COPY_FILES += \
    vendor/se/x8/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/se/x8/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    vendor/se/x8/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    vendor/se/x8/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/se/x8/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    vendor/se/x8/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    vendor/se/x8/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    vendor/se/x8/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    vendor/se/x8/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/se/x8/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    vendor/se/x8/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    vendor/se/x8/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/se/x8/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    vendor/se/x8/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    vendor/se/x8/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/se/x8/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    vendor/se/x8/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so

## Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

## Camera proprietaries
PRODUCT_COPY_FILES += \
    vendor/se/x8/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/se/x8/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/se/x8/proprietary/lib/libmmipl.so:system/lib/libmmipl.so

## TI firmware
PRODUCT_COPY_FILES += \
    vendor/se/x8/proprietary/lib/modules/sdio.ko:system/lib/modules/sdio.ko \
    vendor/se/x8/proprietary/lib/modules/tiwlan_drv.ko:system/lib/modules/tiwlan_drv.ko \


## Other libraries and proprietary binaries
PRODUCT_COPY_FILES += \
    device/se/x8/prebuilt/sensors.conf:system/etc/sensors.conf \
    vendor/se/x8/proprietary/bin/akmd2:system/bin/akmd2 \
    vendor/se/x8/proprietary/bin/updatemiscta:system/bin/updatemiscta \
    vendor/se/x8/proprietary/lib/libmiscta.so:system/lib/libmiscta.so \
    device/se/x8/prebuilt/busybox:system/bin/busybox \
    device/se/x8/prebuilt/chargemon:system/bin/chargemon \
    device/se/x8/prebuilt/xrecovery.tar:system/bin/xrecovery.tar \
    device/se/x8/prebuilt/charger:system/bin/charger \
    device/se/x8/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    vendor/se/x8/proprietary/etc/semc/chargemon/anim1.rle:system/etc/semc/chargemon/anim1.rle \
    vendor/se/x8/proprietary/etc/semc/chargemon/anim2.rle:system/etc/semc/chargemon/anim2.rle \
    vendor/se/x8/proprietary/etc/semc/chargemon/anim3.rle:system/etc/semc/chargemon/anim3.rle \
    vendor/se/x8/proprietary/etc/semc/chargemon/anim4.rle:system/etc/semc/chargemon/anim4.rle \
    vendor/se/x8/proprietary/etc/semc/chargemon/anim5.rle:system/etc/semc/chargemon/anim5.rle \
    vendor/se/x8/proprietary/etc/semc/chargemon/anim6.rle:system/etc/semc/chargemon/anim6.rle \
    vendor/se/x8/proprietary/etc/semc/chargemon/anim7.rle:system/etc/semc/chargemon/anim7.rle \
    vendor/se/x8/proprietary/etc/semc/chargemon/anim8.rle:system/etc/semc/chargemon/anim8.rle \
    vendor/se/x8/proprietary/etc/AudioFilterProduct.csv:system/etc/AudioFilterProduct.csv \
    vendor/se/x8/proprietary/etc/AudioFilterPlatform.csv:system/etc/AudioFilterPlatform.csv \
    vendor/se/x8/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \
    vendor/se/x8/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/se/x8/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    vendor/se/x8/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/se/x8/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/se/x8/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/se/x8/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/se/x8/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/se/x8/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    vendor/se/x8/proprietary/lib/libgsl.so:system/lib/libgsl.so
#    device/se/x8/prebuilt/ramdisk.tar:system/bin/ramdisk.tar \

PRODUCT_COPY_FILES += \
    device/se/x8/media_profiles.xml:system/etc/media_profiles.xml \
    device/se/x8/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/se/x8/vold.fstab:system/etc/vold.fstab \
    device/se/x8/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/se/x8/prebuilt/shakira_keypad.kl:system/usr/keylayout/shakira_keypad.kl \
    device/se/x8/prebuilt/systemconnector.kl:system/usr/keylayout/systemconnector.kl

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := x8
PRODUCT_DEVICE := x8
PRODUCT_MODEL := SonyEricsson X8