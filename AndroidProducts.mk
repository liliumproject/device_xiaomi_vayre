#
# Copyright (C) 2018-2020 The LineageOS Project
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

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_lavender.mk \
    $(LOCAL_DIR)/lineage_platina.mk \
    $(LOCAL_DIR)/lineage_tulip.mk \
    $(LOCAL_DIR)/lineage_whyred.mk

COMMON_LUNCH_CHOICES := \
    lineage_lavender-user \
    lineage_lavender-userdebug \
    lineage_lavender-eng \
    lineage_platina-user \
    lineage_platina-userdebug \
    lineage_platina-eng \
    lineage_tulip-user \
    lineage_tulip-userdebug \
    lineage_tulip-eng \
    lineage_whyred-user \
    lineage_whyred-userdebug \
    lineage_whyred-eng \
		
