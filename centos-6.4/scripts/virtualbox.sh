# # Bail if we are not running inside VirtualBox.
# [ `facter virtual` == "virtualbox" ] || {
#   exit 0
# }

# mkdir -p /mnt/virtualbox
# mount -o loop /home/vagrant/VBoxGuest*.iso /mnt/virtualbox
# sh /mnt/virtualbox/VBoxLinuxAdditions.run
# umount /mnt/virtualbox
# rm -rf /home/vagrant/VBoxGuest*.iso

# Installing the virtualbox guest additions
VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
cd /tmp
mkdir -p /mnt/virtualbox
mount -o loop /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt/virtualbox
sh /mnt/virtualbox/VBoxLinuxAdditions.run
umount /mnt/virtualbox
rm -rf /home/vagrant/VBoxGuestAdditions_*.iso