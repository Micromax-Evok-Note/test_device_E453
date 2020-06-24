#
# Copyright (C) 2018 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/micromax/E453

# Device board elements
include $(LOCAL_PATH)/PlatformConfig.mk

#TODO:
# Device vendor board
#include vendor/micromax/E453/BoardConfigVendor.mk

#TODO:
#include $(LOCAL_PATH)/board/*.mk

# BOOTLOADER
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := mediatek
TARGET_BOARD_PLATFORM := mt6753


# KERNEL
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
BOARD_KERNEL_CMDLINE := console=tty0 console=ttyMT0,921600n1 root=/dev/ram vmalloc=496M androidboot.hardware=mt6735 slub_max_order=0 slub_debug=O bootopt=64S3,32N2,64N2 lcm=1-ili9885b_fhd_dsi_vdo_txd_asi fps=6013 vram=29229056 printk.disable_uart=1 bootprof.pl_t=1502 bootprof.lk_t=2749 boot_reason=4 androidboot.serialno=V027751701600002227 androidboot.bootreason=wdt_by_pass_pwk gpt=1 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000


# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25874137088
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4773117952
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_FLASH_BLOCK_SIZE := 131072

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := E453

# Flags
BOARD_HAS_FLIPPED_SCREEN := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# DEVICE-SPECIFIC
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# system.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun0/file


TARGET_PROVIDES_INIT_RC := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun0/file
 
# EGL
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

