#
# Copyright (C) 2009 The Android Open Source Project
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

ifeq ($(TARGET_BOARD_PLATFORM),exynos4)
common_exynos4_dirs := libgralloc_ump libUMP libhdmi libfimc libhwcomposer libhwconverter libswconverter libcamera
exynos4210_dirs := $(common_exynos4_dirs) libs5pjpeg libfimg3x

ifeq ($(CAMERA_USE_DIGITALZOOM), true)
exynos4x12_dirs := $(common_exynos4_dirs) libhwjpeg libfimg4x libcamerazoom
else
exynos4x12_dirs := $(common_exynos4_dirs) libhwjpeg libfimg4x libcamera
endif

ifeq ($(TARGET_SOC),exynos4210)
  include $(call all-named-subdir-makefiles,$(exynos4210_dirs))
else
  include $(call all-named-subdir-makefiles,$(exynos4x12_dirs))
endif
endif
