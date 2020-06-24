# Kernel information
BOARD_KERNEL_CMDLINE := console=tty0 console=ttyMT0,921600n1 root=/dev/ram vmalloc=496M androidboot.hardware=mt6735 slub_max_order=0 slub_debug=O bootopt=64S3,32N2,64N2 lcm=1-ili9885b_fhd_dsi_vdo_txd_asi fps=6013 vram=29229056 printk.disable_uart=1 bootprof.pl_t=1502 bootprof.lk_t=2749 boot_reason=4 androidboot.serialno=V027751701600002227 androidboot.bootreason=wdt_by_pass_pwk gpt=1 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_NAME := 1479347649
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x03f88000
BOARD_TAGS_OFFSET := 0x0df88000
BOARD_SECOND_OFFSET := 0x00e88000
BOARD_MKBOOTIMG_ARGS := --board $(BOARD_NAME) --base $(BOARD_KERNEL_BASE) --pagesize $(BOARD_KERNEL_PAGESIZE) --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET) --second_offset $(BOARD_SECOND_OFFSET)
TARGET_IS_64_BIT := true
MTK_K64_SUPPORT := yes

# Kernel properties
BOARD_KERNEL_IMAGE_NAME := kernel
MTK_APPENDED_DTB_SUPPORT := yes
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
