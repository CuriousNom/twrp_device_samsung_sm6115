#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/sm6115

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

PRODUCT_PLATFORM := bengal
PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_engine_sideload \
    update_verifier \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    android.hardware.boot@1.0-impl-wrapper.recovery \
    android.hardware.boot@1.0-impl-wrapper \
    android.hardware.boot@1.0-impl.recovery \
    bootctrl.$(PRODUCT_PLATFORM) \
    bootctrl.$(PRODUCT_PLATFORM).recovery \

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# qcom decryption
PRODUCT_PACKAGES_ENG += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Dependencies
TARGET_RECOVERY_DEVICE_MODULES += \
    libion

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so
    
# Recovery Fstab
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/system/etc/twrp.flags:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/twrp.flags

# Init
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/init.recovery.usb.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.usb.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.qcom.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.qcom.rc

# Firmware
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/wlan/qca_cld/bdwlan.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/wlan/qca_cld/bdwlan.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/wlan/qca_cld/grippower.info:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/wlan/qca_cld/grippower.info \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/wlan/qca_cld/regdb.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/wlan/qca_cld/regdb.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/wlan/qca_cld/wlan_mac.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/wlan/qca_cld/wlan_mac.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a620_zap.b00:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a620_zap.b00 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a620_zap.b01:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a620_zap.b01 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a620_zap.b02:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a620_zap.b02 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a620_zap.elf:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a620_zap.elf \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a620_zap.mdt:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a620_zap.mdt \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a630_sqe.fw:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a630_sqe.fw \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a650_gmu.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a650_gmu.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a650_sqe.fw:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a650_sqe.fw \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a650_zap.b00:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a650_zap.b00 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a650_zap.b01:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a650_zap.b01 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a650_zap.b02:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a650_zap.b02 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a650_zap.elf:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a650_zap.elf \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a650_zap.mdt:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a650_zap.mdt \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a702_sqe.fw:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a702_sqe.fw \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a702_zap.b00:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a702_zap.b00 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a702_zap.b01:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a702_zap.b01 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a702_zap.b02:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a702_zap.b02 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a702_zap.elf:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a702_zap.elf \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/a702_zap.mdt:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a702_zap.mdt \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/apbtfw11.tlv:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/apbtfw11.tlv \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/apnv11.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/apnv11.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/Data.msc:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/Data.msc \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/dax_param.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/dax_param.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/focal_ts_fw_lide_hsd.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/focal_ts_fw_lide_hsd.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/focal_ts_fw_tianma_tianma.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/focal_ts_fw_tianma_tianma.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/focal_ts_mp_lide_hsd.ini:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/focal_ts_mp_lide_hsd.ini \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/focal_ts_mp_tianma_tianma.ini:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/focal_ts_mp_tianma_tianma.ini \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/focaltech_ts_fw_lide.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/focaltech_ts_fw_lide.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/fs1801.fsm:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/fs1801.fsm \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/Himax_firmware_djn_jdi.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/Himax_firmware_djn_jdi.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/Himax_firmware_hlt_auo.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/Himax_firmware_hlt_auo.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/Himax_firmware_inx_fhd.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/Himax_firmware_inx_fhd.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/Himax_firmware_lide_hsd.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/Himax_firmware_lide_hsd.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/Himax_firmware_tianma_tianma.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/Himax_firmware_tianma_tianma.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/Himax_firmware_txd_auo.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/Himax_firmware_txd_auo.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/Himax_firmware_txd_auo_al.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/Himax_firmware_txd_auo_al.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/Himax_firmware_txd_inx.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/Himax_firmware_txd_inx.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/hx_criteria_auo.csv:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/hx_criteria_auo.csv \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/hx_criteria_djn.csv:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/hx_criteria_djn.csv \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/hx_criteria_inx.csv:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/hx_criteria_inx.csv \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/hx_criteria_tianma.csv:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/hx_criteria_tianma.csv \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/ipa_fws.b00:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/ipa_fws.b00 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/ipa_fws.b01:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/ipa_fws.b01 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/ipa_fws.b02:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/ipa_fws.b02 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/ipa_fws.b03:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/ipa_fws.b03 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/ipa_fws.b04:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/ipa_fws.b04 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/ipa_fws.elf:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/ipa_fws.elf \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/ipa_fws.mdt:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/ipa_fws.mdt \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_fw_hlt_auo.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/novatek_ts_fw_hlt_auo.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_fw_lce_panda.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/novatek_ts_fw_lce_panda.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_fw_lide_hsd.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/novatek_ts_fw_lide_hsd.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_fw_txd_inx.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/novatek_ts_fw_txd_inx.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_mp_hlt_auo.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/novatek_ts_mp_hlt_auo.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_mp_lce_panda.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/novatek_ts_mp_lce_panda.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_mp_lide_hsd.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/novatek_ts_mp_lide_hsd.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/novatek_ts_mp_txd_inx.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/novatek_ts_mp_txd_inx.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/scuba_ipa_fws.b00:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/scuba_ipa_fws.b00 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/scuba_ipa_fws.b01:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/scuba_ipa_fws.b01 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/scuba_ipa_fws.b02:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/scuba_ipa_fws.b02 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/scuba_ipa_fws.b03:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/scuba_ipa_fws.b03 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/scuba_ipa_fws.b04:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/scuba_ipa_fws.b04 \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/scuba_ipa_fws.elf:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/scuba_ipa_fws.elf \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/scuba_ipa_fws.mdt:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/scuba_ipa_fws.mdt \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/wlanmdsp.mbn:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/wlanmdsp.mbn