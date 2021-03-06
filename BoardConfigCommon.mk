#
# Copyright (C) 2009 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Set this up here so that BoardVendorConfig.mk can override it

LOCAL_PATH:= $(call my-dir)

# Board
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_SPECIFIC_HEADER_PATH := device/samsung/bcm21553-common/include
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true

# TouchScreen
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_ALSA_AUDIO := true

# RIL
BOARD_USES_LEGACY_RIL := true
BOARD_FORCE_RILD_AS_ROOT := true
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

# Camera
USE_CAMERA_STUB := true
BOARD_V4L2_DEVICE := /dev/video2
BOARD_CAMERA_DEVICE := /dev/video0
BOARD_USE_JPEG := true

# 3D
BOARD_EGL_CFG := device/samsung/bcm21553-common/prebuilt/lib/egl/egl.cfg
BOARD_NO_RGBX_8888 := true
ENABLE_WEBGL := true

# Browser / Stagefright
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ENABLE_JSC_JIT := true

# USB
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/lm-2/gadget/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/lm-2/gadget/lun0/file"

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wifi/bcm4330_sta.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/etc/wifi/bcm4330_aps.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wifi/bcm4330_sta.bin nvram_path=/system/etc/wifi/nvram.txt"
WIFI_DRIVER_MODULE_NAME := "bcm4330"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# FM
# BOARD_HAVE_FM_RADIO := true
# BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
# BOARD_FM_DEVICE := bcm4329
