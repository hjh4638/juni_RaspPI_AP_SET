# juni_RaspPI_AP_SET
You once command one shell file, your Raspberry pi become AP

First, you need to git clone of it.
And then, command 
  sudo bash AP_SET.sh
  
It install hostapd and isc_dhcp-server.
Then, modify 9 files.
/etc/default/hostapd, /etc/default/ifplugd, /etc/default/isc-dhcp-server, /etc/dhcp/dhcpd.conf 
/etc/hostapd/hostapd.conf, /etc/iptables.ipv4.nat, /etc/network/interfaces, /etc/sysctl.conf, /proc/sys/net/ipv4/ip_forward


It download http://adafruit-download.s3.amazonaws.com/adafruit_hostapd_14128.zip.
And original hostapd is changed to adafruit_hostapd. It is for wireless LAN card driver.

It start service; hostapd, isc-dhcp-server

It set DNS server in ther /etc/resolv.conf
Also IP masquerade Setting used to internet.


한번의 쉘 파일의 실행으로 당신의 라즈베리파이가 AP로 동작하게 할 수 있습니다.

먼저 이 소스를 git clone하시고 
	sudo bash AP_SET.sh
를 실행해 주세요.

이 쉘 파일은 hostapd와 isc-dhcp-server를 설치하고
9개의 설정파일을 변경합니다. 아래 9개의 설정파일이 있습니다.
/etc/default/hostapd, /etc/default/ifplugd, /etc/default/isc-dhcp-server, /etc/dhcp/dhcpd.conf 
/etc/hostapd/hostapd.conf, /etc/iptables.ipv4.nat, /etc/network/interfaces, /etc/sysctl.conf, /proc/sys/net/ipv4/ip_forward

그리고 http://adafruit-download.s3.amazonaws.com/adafruit_hostapd_14128.zip을 다운받아서 기존에 있는 hostapd와 바꿔주게 됩니다.  이는 무선랜 카드와 호환을 위함입니다.

마지막으로 hostapd, isc-dhcp-server를 시작하게 되고 
DNS 서버를 다시 세팅한 뒤 IP 마스커레이드를 적용합니다. 
이를 통해 이더넷으로 연결된 인터넷을 사용할 수 있게 됩니다.
