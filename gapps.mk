#
# Copyright (C) 2012 joaquim.org
# Modified 2013 Piso94
#
# Copy GAPPS
#
#

# use all present proprietary apk
PRODUCT_COPY_FILES += $(shell find device/rockchip/842i/proprietary -name '*.apk' \
-printf '%p:system/app/%f ')

# use all present proprietary lib
PRODUCT_COPY_FILES += $(shell find device/rockchip/842i/proprietary -name '*.so' \
-printf '%p:system/lib/%f ')

# use all present proprietary jar
PRODUCT_COPY_FILES += $(shell find device/rockchip/842i/proprietary -name '*.jar' \
-printf '%p:system/framework/%f ')

# use all present proprietary xml (permissions)
PRODUCT_COPY_FILES += $(shell find device/rockchip/842i/proprietary -name '*.xml' \
-printf '%p:system/etc/permissions/%f ')

# use all present ttf
PRODUCT_COPY_FILES += $(shell find device/rockchip/842i/proprietary -name '*.ttf' \
-printf '%p:system/fonts/%f ')

PRODUCT_COPY_FILES += \
    device/rockchip/842i/proprietary/70-gapps.sh:system/addon.d/70-gapps.sh \
	device/rockchip/842i/proprietary/g.prop:system/etc/g.prop
	
#Lang srec
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/rockchip/842i/proprietary/usr,system/usr)
	
