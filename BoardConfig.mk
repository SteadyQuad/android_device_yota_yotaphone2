#
# Copyright 2014 The Android Open-Source Project
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

# Use the non-open-source parts, if they're present
-include vendor/yota/yotaphone2/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm8974

BOARD_EGL_CFG := device/yota/yotaphone2/egl.cfg

# BOOT.IMG and Kernel parameters
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_BASE := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3b7 ehci-hcd.park=3 androidboot.selinux=permissive androidboot.bootdevice=msm_sdcc.1

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x00000100
# TODO: for CM version add --dt $(LOCAL_PATH)/dt.img

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27375697920
BOARD_CACHEIMAGE_PARTITION_SIZE := 1073741824
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_RECOVERY_INITRC := device/yota/yotaphone2/init.recovery.yotaphone2.rc
TARGET_RECOVERY_FSTAB := device/yota/yotaphone2/rootdir/recovery.fstab

# For inline kernel building
# BUILD_KERNEL := true
# needs mod in build tools too: e.g. add build/core/tasks/kernel.mk
#TARGET_KERNEL_SOURCE := kernel/yota/yotaphone2
#KERNEL_DEFCONFIG := msm8974_defconfig
#TARGET_KERNEL_CONFIG := msm8974_defconfig
# KERNEL_TARGET := zImage
# needed?
# KERNEL_DIR := kernel
#-include $(TOP)/$(KERNEL_DIR)/AndroidKernel.mk

# use prebuilt kernel for now
TARGET_PREBUILT_KERNEL := device/yota/yotaphone2/kernel/zImage

# OpenGL
USE_OPENGL_RENDERER := true

