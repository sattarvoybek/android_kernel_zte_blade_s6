#!/bin/bash

export ARCH=arm
export CROSS_COMPILE="/home/sattarvoybek/root/Toolchains/Uber/arm-eabi-4.8/bin/arm-eabi-"


make msm8916_defconfig
#make msm8939_defconfig 
make -j16

./dtbToolCM -2 -o dt.img -s 2048 -p scripts/dtc/ arch/arm/boot/dts/

#cp ./arch/arm/boot/zImage ./out/zImage

