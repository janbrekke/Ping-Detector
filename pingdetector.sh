#!/bin/bash
#
# Created by: Jan Brekke
# Website: https://www.digitalbrekke.com
#

tcpdump -l -i eth0 icmp and icmp[icmptype]=icmp-echo | awk '/IP/{print "\033[33m\t [x]   \033[32m You are being PINGED by:\033[31m "$5}' 