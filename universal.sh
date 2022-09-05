# Install Repositories
yum install epel-release -y

# Update Repositories and Update Local Packages
yum update -y
yum install nano -y
yum install wget -y
yum install python-pip python -y
yum install htop -y
yum install sed -y

# Install Zabbix Agent (Does not configure)
rpm -Uvh https://repo.zabbix.com/zabbix/4.0/rhel/7/x86_64/zabbix-release-4.0-2.el7.noarch.rpm
yum install zabbix zabbix-agent -y

# Download Zabbix Setup File & Replace
cd /etc/zabbix
sed -i 's/Server=/Server=143.198.238.10/g' zabbix_agentd.conf
sed -i 's/# EnableRemoteCommands=0/EnableRemoteCommands=1/g' zabbix_agentd.conf

# Start Zabbix Agent
service zabbix-agent restart
