# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=a51
device.name2=m21
device.name3=m31
device.name4=m31s
device.name5=f41
supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/platform/13520000.ufs/by-name/boot;
dtboblock=/dev/block/platform/13520000.ufs/by-name/dtbo;
is_slot_device=0;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;


## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;

### Destrictize Kernel Project changes

# Variables
DSTR_VER="1"

# Banner
ui_print ""
ui_print "Destrictize Kernel Project"
ui_print "           v${DSTR_VER}   "
ui_print ""
ui_print "Brought to you by @hendralize"


## AnyKernel boot install
dump_boot;

write_boot;
## end boot install

# Final output
ui_print ""
ui_print "Destrictize Kernel installation succeed!"
ui_print ""
ui_print "Thank you so much for using my kernel!"
ui_print "Like my work? Saying thanks is more than enough for me. Thanks! :>"
