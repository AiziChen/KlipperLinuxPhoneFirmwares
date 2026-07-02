../tools/fastboot-macos-universal erase userdata
../tools/fastboot-macos-universal erase boot
../tools/fastboot-macos-universal flash boot lk2nd-mido.img
../tools/fastboot-macos-universal reboot
echo 等待手机进入lk2nd界面并且设备管理器识别到后再继续
read "please wait for lk2nd screen, then continue"


../tools/fastboot-macos-universal flash boot boot-oxygen-7.0.1.img
../tools/fastboot-macos-universal flash userdata ../rootfs-7.0.1.img
../tools/fastboot-macos-universal reboot
