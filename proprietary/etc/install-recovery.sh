#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p15:5304576:a758513c0bc63fffc333537ed010d2179b1913a0; then
  log -t recovery "Installing new recovery image"
  applypatch EMMC:/dev/block/mmcblk0p8:4608256:d3ae8928d5711c22700d721e97a41160e163685f EMMC:/dev/block/mmcblk0p15 a758513c0bc63fffc333537ed010d2179b1913a0 5304576 d3ae8928d5711c22700d721e97a41160e163685f:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
