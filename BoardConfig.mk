BOARD_VENDOR := Huawei
LOCAL_PATH := device/huawei/next

USE_CAMERA_STUB := true

TARGET_PROVIDES_LIBLIGHT := true
TARGET_PROVIDES_INIT_RC := true
ENABLE_CPUSETS := true

# Assert
TARGET_OTA_ASSERT_DEVICE := hi3650,HWNXT,next,nxt,NXT,NXT-L29

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := hisi

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a7

TARGET_CPU_SMP := true
TARGET_BOARD_PLATFORM := hi3650
TARGET_SOC := kirin950

TARGET_USES_64_BIT_BINDER := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_USERIMAGES_USE_F2FS := true

ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Kernel
BOARD_KERNEL_BASE     := 0x00478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x07588000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x07b88000

BOARD_KERNEL_CMDLINE  := mmcparts=mmcblk0:p1(vrl),p2(vrl_backup),p6(modemnvm_factory),p9(splash),p10(modemnvm_backup),p11(modemnvm_img),p12(modemnvm_system),p14(3rdmodemnvm),p15(3rdmodemnvmbkp),p18(modem_om),p21(modemnvm_update),p31(modem),p32(modem_dsp),p35(3rdmodem) loglevel=4 androidboot.hardware=hi3650 androidboot.selinux=permissive androidboot.dm_verity=disabled
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
TARGET_PREBUILT_KERNEL := device/huawei/next/kernel

#TARGET_KERNEL_SOURCE := kernel/huawei/malit880
#TARGET_KERNEL_CONFIG := merge_hi3650_defconfig
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := aarch64-linux-android-4.9
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := /home/paul/Desktop/aarch64-linux-android-4.9/bin/aarch64-linux-android-

# Partitions
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26935820288
BOARD_FLASH_BLOCK_SIZE := 4096

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"

# SD Card
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1k1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2

# Display
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := false
TARGET_USE_PAN_DISPLAY := true
TARGET_HARDWARE_3D := true

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 6

PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
ANDROID_ENABLE_RENDERSCRIPT := true
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true
ENABLE_WEBGL := true

# Audio
BOARD_USES_ALSA_AUDIO := true
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false
BOARD_SUPPORTS_SOUND_TRIGGER := true

# Camera
USE_CAMERA_STUB := false
BOARD_CAMERA_HAVE_ISO := true
USE_DEVICE_SPECIFIC_CAMERA := true

# RIL
#BOARD_PROVIDES_LIBRIL := true
#BOARD_RIL_CLASS := ../../../device/huawei/next/ril
#BOARD_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING
#PROTOBUF_SUPPORTED := true
#TARGET_RIL_VARIANT := proprietary


# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BACKLIGHT_PATH := /sys/class/leds/lcd_backlight0/brightness
RED_LED_PATH := "/sys/class/leds/red/brightness"
GREEN_LED_PATH := "/sys/class/leds/green/brightnes"
BLUE_LED_PATH :=  "/sys/class/leds/blue/brightnes"
HEALTHD_BACKLIGHT_LEVEL := 50

# Wifi - 4345 is used here (instead of 4344)
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4345
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcm43455_hw.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcm43455_apsta_hw.bin"
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/vendor/firmware/fw_bcm43455_hw.bin nvram_path=/system/vendor/firmware/nvram43455_hw.txt"
WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path=/system/vendor/firmware/fw_bcm43455_apsta_hw.bin nvram_path=/system/vendor/firmware/nvram43455_hw.txt"
WIFI_BAND                        := 802_11_ABG

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# GPS
USE_DEVICE_SPECIFIC_GPS := true
TARGET_NO_RPC := true

# Recovery
RECOVERY_VARIANT := #twrp
RECOVERY_FSTAB_VERSION := 2

# TWRP
#TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/twrp.fstab
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/recovery.fstab
DEVICE_RESOLUTION := 1080x1920
TW_THEME := portrait_hdpi
TW_CUSTOM_BATTERY_PATH := "/sys/devices/battery.5/power_supply/Battery"
TARGET_USERIMAGES_USE_EXT4 := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "/emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "/sdcard"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd_backlight0/brightness"
TW_MAX_BRIGHTNESS := 255


# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif

# Properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Sensors
USE_SENSOR_MULTI_HAL := true

EXTENDED_FONT_FOOTPRINT := true

# Inherit from the proprietary version
-include vendor/huawei/next/BoardConfigVendor.mk

# Enable ADB during boot for debugging. (Very unsafe. Remove before public build)
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.adb.secure=0 \
	ro.secure=0 \
	ro.debuggable=1 \
   	ro.zygote=zygote64_32
        ro.hardware=hi3650

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
