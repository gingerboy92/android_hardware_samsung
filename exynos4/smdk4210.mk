# Copyright (C) 2012 The Android Open Source Project
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

ifeq ($(TARGET_BOARD_PLATFORM),exynos4)

# HAL
PRODUCT_PACKAGES += \
    camera.exynos4 \
    libfimc \
    libfimg \
    gralloc.exynos4 \
    libUMP \
    hwcomposer.exynos4 \
    libhwconverter \
    libswconverter \
    libs5pjpeg


# HDMI
ifeq ($(BOARD_USES_HDMI), true)
PRODUCT_PACKAGES += \
    libTVOut \
    libhdmiclient \
    libcec \
    libddc \
    libedid \
    libhdmi
endif


# MFC API
ifeq ($(BOARD_USE_EXYNOS_OMX), true)
PRODUCT_PACKAGES += \
    libExynosVideoApi \
    libsrpapi
else
PRODUCT_PACKAGES += \
    libsecmfcapi
endif


# OMX
PRODUCT_PACKAGES += \
    libcsc \
    libsecbasecomponent \
    libsecosal \
    libSEC_OMX_Resourcemanager \
    libSEC_OMX_Core \
    libSEC_OMX_Vdec \
    libOMX.SEC.AVC.Decoder \
    libOMX.SEC.M4V.Decoder \
    libOMX.SEC.WMV.Decoder \
    libOMX.SEC.VP8.Decoder \
    libSEC_OMX_Venc \
    libOMX.SEC.AVC.Encoder \
    libOMX.SEC.M4V.Encoder \
    libSEC_OMX_Adec \
    libOMX.SEC.MP3.Decoder \

endif
