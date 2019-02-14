#! /bin/bash

# positional parameters
DEVICE_NAME=$1
DEVICE_OWNER=$2
VG_NAME=$3
MOUNT_PATH=$4

# LVM createon
pvcreate -y /dev/$DEVICE_NAME
vgcreate $VG_NAME /dev/$DEVICE_NAME
lvcreate -l 100%VG -n $VG_NAME-lv $VG_NAME
mkfs -t ext4 -F /dev/$VG_NAME/$VG_NAME-lv

# mount point creation
mkdir -p $MOUNT_PATH
echo "/dev/$VG_NAME/$VG_NAME-lv   $MOUNT_PATH ext4 defaults 0 0" >> /etc/fstab
mount -a
chown $DEVICE_OWNER:$DEVICE_OWNER $MOUNT_PATH
