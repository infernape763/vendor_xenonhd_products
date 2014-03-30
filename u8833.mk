# Inherit AOSP device configuration.
$(call inherit-product, device/huawei/u8833/full_u8833.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/products/common.mk)

# Inherit common build.prop overrides
-include vendor/xenonhd/products/common_versions.mk

# Inherit GSM common stuff.
$(call inherit-product, vendor/xenonhd/configs/gsm.mk)

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/xenonhd/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/xenonhd/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/xenonhd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/xenonhd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Setup device specific product configuration.
PRODUCT_NAME := xenonhd_u8833
PRODUCT_BRAND := Huawei
PRODUCT_DEVICE := u8833
PRODUCT_MODEL := Ascend Y300
PRODUCT_MANUFACTURER := HUAWEI

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=u8833 BUILD_FINGERPRINT="huawei/u8833/u8833:4.4/KRT16S/920375:user/release-keys" PRIVATE_BUILD_DESC="u8833-user 4.4 KRT16S 920375 release-keys"
