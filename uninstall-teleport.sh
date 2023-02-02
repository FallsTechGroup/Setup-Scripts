pkill -f teleport
systemctl stop teleport
systemctl disable teleport

launchctl unload /Library/LaunchDaemons/com.goteleport.teleport.plist
rm -f /Library/LaunchDaemons/com.goteleport.teleport.plist

rpm -U teleport
yum -y remove teleport
dnf -y remove teleport
dpkg -r teleport
apt -y remove teleport

rm -f /usr/local/bin/teleport
rm -f /usr/local/bin/tctl
rm -f /usr/local/bin/tsh
rm -f /usr/local/bin/tbot

sudo rm -rf /var/lib/teleport
sudo rm -f /etc/teleport.yaml
exit 0
