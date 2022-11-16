#!/usr/bin/env bash
#!/usr/bin/env bash
iptables -t nat -F
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 1100:1190 -j DNAT --to 10.10.0.101 #brucelee
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 1200:1290 -j DNAT --to 10.10.0.102 #rambo 
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 1300:1390 -j DNAT --to 10.10.0.103 #ironhide
iptables -t nat -A POSTROUTING -j MASQUERADE