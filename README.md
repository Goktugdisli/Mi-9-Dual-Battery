# Mi 9 (Cepheus) Dual-Battery Kernel and Power Profile Fix
A hardware and software kit designed to support physical 6600mAh dual-battery modifications on the Xiaomi Mi 9. This repository contains two interconnected modules: a hardware-level DTBO flasher and a systemless Power Profile overlay.

## 1. DTBO-Flasher (Kernel Profile)
A flashable AnyKernel3 package that injects a custom dtbo.img to enforce a 6600mAh hardware battery profile. Compiled using the InfiniR kernel source, this patch overrides the Power Management IC (PMIC) fuel gauge parameters. It doubles the battery capacity and charge termination current, while increasing the cutoff voltage to 3.45V and empty voltage to 3.25V.

## 2. PowerProfile-KSU (Power Profile)
A KernelSU module that injects a systemless Android framework overlay to sync software battery statistics with the new hardware math. This is required for correct Android UI percentages.

Built using the IncreasedBatteryCapacity base, using the original overlay apk detection script by PycmShoma.

## Compatibility
Device: Xiaomi Mi 9 (Cepheus)

ROM Type: Retrofit Dynamic Partition (RDP) ROMs only.

Notice: NOT COMPATIBLE WITH CUSTOM HIGH REFRESH RATE DTBO MODIFICATIONS. I plan to make a high refresh rate release as well.

## Installation
1. Flash the DTBO-Flasher .zip in OrangeFox/TWRP to apply the kernel profile.
2. Boot into Android, install the PowerProfile-KSU module in the KernelSU/Magisk app to for power profile. Failing to do this will result in broken battery percentage reporting.

## Disclaimer ⚠️
I am not responsible for bricked devices, dead SD cards, or motherboard fires. Modifying lithium-ion batteries requires physical soldering and carries inherent risks of thermal runaway. You are choosing to make these modifications at your own risk.

## Credits
raystef66 - For the Cepheus Android kernel source and the AnyKernel3 template used in this project.

PycmShoma - For the base of the Power Profile framework overlay (IncreasedBatteryCapacity).

osm0sis - For the original AnyKernel3 flashing framework.