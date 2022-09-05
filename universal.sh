# Install Repositories
yum install epel-release

# Update Repositories and Update Local Packages
yum update -y
yum install nano -y
yum install wget -y
yum install python-pip python -y
yum install htop -y

# Install Zabbix Agent (Does not configure)
rpm -Uvh https://repo.zabbix.com/zabbix/4.0/rhel/7/x86_64/zabbix-release-4.0-2.el7.noarch.rpm
yum install zabbix zabbix-agent -y

# Download Zabbix Setup File & Replace
cd /etc/zabbix
rm zabbix_agentd.conf
wget https://raw.githubusercontent.com/FallsTechGroup/Setup-Scripts/main/zabbix_agentd.conf

# Start Zabbix Agent
#service zabbix-agent restart
