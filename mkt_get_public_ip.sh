{
/tool fetch url="http://myip.dnsomatic.com/" mode=http dst-path=mypublicip.txt
local ip [file get mypublicip.txt contents ]

/ip/firewall/address-list/add address=$ip list=public_ip

put $ip

}
