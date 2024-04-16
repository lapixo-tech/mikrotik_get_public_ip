:if ([ip cloud/get ddns-enabled] = yes) do={:put "DDNS ENABLED"} else={
:put "DDNS disabled" 
:put "enabling"
/ip/cloud set ddns-enabled=yes}
/ip/firewall/address-list remove [/ip firewall/address-list find list="public_ip"]
:local ip;
:set ip [/ip/cloud/get public-address]
/ip/firewall/address-list/add address=$ip list=public_ip
:put $ip;
