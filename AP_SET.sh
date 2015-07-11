#AP packege install
sudo apt-get install hostapd
sudo apt-get install isc-dhcp-server -y

#config modify
sudo cp etc_default_hostapd /etc/default/hostapd
sudo cp etc_default_ifplugd /etc/default/ifplugd 
sudo cp etc_default_isc-dhcp-server /etc/default/isc-dhcp-server 
sudo cp etc_dhcp_dhcpd.conf /etc/dhcp/dhcpd.conf 
sudo cp etc_hostapd_hostapd.conf /etc/hostapd/hostapd.conf
sudo cp etc_iptables.ipv4.nat /etc/iptables.ipv4.nat
sudo cp etc_network_interfaces /etc/network/interfaces
sudo cp etc_sysctl.conf /etc/sysctl.conf 
sudo cp proc_sys_net_ipv4_ipforward /proc/sys/net/ipv4/ip_forward

#AP driver install
wget http://adafruit-download.s3.amazonaws.com/adafruit_hostapd_14128.zip
unzip adafruit_hostapd_14128.zip
sudo mv /usr/sbin/hostapd /usr/sbin/hostapd.ORIG
sudo mv hostapd /usr/sbin
sudo chmod 755 /usr/sbin/hostapd

#service start
sudo service hostapd start
sudo service isc-dhcp-server start

#DNS and IP masquerade Setting
sudo echo nameserver 8.8.8.8 > /etc/resolv.conf
sudo echo nameserver 8.8.4.4 >> /etc/resolv.conf
sudo modprobe ipt_MASQUERADE
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

