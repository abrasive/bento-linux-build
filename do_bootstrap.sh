sudo mke2fs -j /dev/mmcblk0p2
sudo mount /dev/mmcblk0p2 /mnt/sd
sudo debootstrap --foreign --arch=armel --include=openssh-client,openssh-server,wpasupplicant,vim,kexec-tools,wireless-tools wheezy /mnt/sd http://mirror.internode.on.net/pub/debian
sudo cp bootstrap.init /mnt/sd/
cat bootstrap_delta.tar | gzip | sudo tee /mnt/sd/tmp/bootstrap_delta.tar.gz > /dev/null
sudo umount /mnt/sd
