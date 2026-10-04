#!/system/bin/sh
#
sed -i 's/POWER_SUPPLY_CHARGE_FULL=.*./POWER_SUPPLY_CHARGE_FULL=6600000/' /sys/class/power_supply/bms/uevent
sed -i 's/POWER_SUPPLY_CHARGE_FULL_DESIGN=.*./POWER_SUPPLY_CHARGE_FULL_DESIGN=6600000/' /sys/class/power_supply/bms/uevent
sed -i 's/POWER_SUPPLY_CHARGE_FULL=.*./POWER_SUPPLY_CHARGE_FULL=6600000/' /sys/class/power_supply/battery/uevent
sed -i 's/POWER_SUPPLY_CHARGE_FULL_DESIGN=.*./POWER_SUPPLY_CHARGE_FULL_DESIGN=6600000/' /sys/class/power_supply/battery/uevent
echo 6600000 > /sys/class/power_supply/bms/charge_full
echo 6600000 > /sys/class/power_supply/bms/charge_full_design
echo 6600000 > /sys/class/power_supply/battery/charge_full
echo 6600000 > /sys/class/power_supply/battery/charge_full_design
