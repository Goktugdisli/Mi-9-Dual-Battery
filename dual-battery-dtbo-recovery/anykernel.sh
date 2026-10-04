# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

properties() { '
kernel.string=Dual-Battery DTBO Patch by goktug
do.devicecheck=1
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=cepheus
device.name2=Cepheus
device.name3=cepheus-user
device.name4=Mi 9
device.name5=Mi9
'; }

block=auto;
is_slot_device=auto;
ramdisk_compression=auto;

# import patching functions/variables
. tools/ak3-core.sh;

ui_print "- Flashing modified Dual-Battery DTBO...";

# Flash the DTBO partition
flash_dtbo;

ui_print "- DTBO flash complete!";