# Mi 9 (Cepheus) Dual-Battery Kernel and Power Profile Fix
A hardware and software kit designed to support physical 6600mAh dual-battery modifications on the Xiaomi Mi 9. This repository contains two interconnected modules: a hardware-level DTBO flasher and a systemless Power Profile overlay.

## 1. dual-battery-dtbo-recovery (Kernel Profile)
A flashable AnyKernel3 package that injects a custom dtbo.img to enforce a 6600mAh hardware battery profile. Compiled using the InfiniR kernel source, this patch overrides the Power Management IC (PMIC) fuel gauge parameters. It doubles the battery capacity and halves the charge termination current, while increasing the cutoff voltage to 3.5V and empty voltage to 3.3V.

## 2. dual-battery-ksu (Power Profile)
A KernelSU module that injects a systemless Android framework overlay to sync software battery statistics with the new hardware mat. This is required for correct Android UI percentages.

Built using the IncreasedBatteryCapacity base, using the original overlay apk detection script by PycmShoma.

## Compatibility
Device: Xiaomi Mi 9 (Cepheus)

ROM Type: Retrofit Dynamic Partition (RDP) ROMs only.

Notice: NOT COMPATIBLE WITH CUSTOM HIGH REFRESH RATE DTBO MODIFICATIONS. I plan to make a high refresh rate release as well.

## Installation
1. Backup your boot partition
2. Flash the dual-battery-dtbo-recovery.zip in OrangeFox/TWRP to apply the kernel profile.
3. Boot into Android, install the dual-battery-ksu.zip in the KernelSU/Magisk app to for power profile.
4. Enjoy

## Disclaimer ⚠️
I am not responsible for bricked devices, dead SD cards, or motherboard fires. Modifying lithium-ion batteries requires physical soldering and carries inherent risks of thermal runaway. You are choosing to make these modifications at your own risk.


## Credits
* **[raystef66](https://github.com/raystef66)** - For the Cepheus Android kernel source and the AnyKernel3 template used in this project.
* **[PycmShoma](https://github.com/PycmShoma)** - For the base of the Power Profile framework overlay (`https://github.com/PycmShoma/IncreasedBatteryCapacity`).
* **[osm0sis](https://github.com/osm0sis)** - For the original [AnyKernel3](https://github.com/osm0sis/AnyKernel3) flashing framework.
