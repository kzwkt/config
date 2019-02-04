#!/bin/bash
declare -a arr=(
'sudo ntfs-3g /dev/sda2 /home/kai/mnt/win'
'sudo ntfs-3g /dev/sda3 /home/kai/mnt/rec'
'sudo ntfs-3g /dev/sda4 /home/kai/mnt/aps'
'sudo mount /dev/sda7 /home/kai/mnt/pho'
'sudo mount /dev/sda8 /home/kai/mnt/lin'
'sudo umount /home/kai/mnt/win'
'sudo umount /home/kai/mnt/rec'
'sudo umount /home/kai/mnt/aps'
'sudo umount /home/kai/mnt/pho'
'sudo umount /home/kai/mnt/lin'
)
if [ $# -eq 0 ]; then 
echo "win[0/5],rec[1/6],aps[2/7],pho[3/8],lin[4/9] =part[mount/unmount]"
fi
while [ $# -gt 0 ]
do
exec ${arr[$1]}
done

#usage
#moe [0-4] mount sda2,3,4,7
#moe[5-9] unmount sda 2,3,4,7
