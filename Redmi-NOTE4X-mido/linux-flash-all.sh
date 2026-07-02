../tools/fastboot erase userdata
../tools/fastboot erase boot
../tools/fastboot flash boot lk2nd-mido.img
../tools/fastboot reboot
echo 等待手机进入lk2nd界面并且设备管理器识别到后再继续
read "please wait for lk2nd screen, then continue"


../tools/fastboot flash boot boot-mido-7.0.1.img
../tools/fastboot flash userdata ../rootfs-7.0.1.img
../tools/fastboot reboot
