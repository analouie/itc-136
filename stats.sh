#!/bin/bash

#how much disk space has been used
diskused=$( df -h | grep "/dev/sda1" | awk '{print $5}' )

#how much memory is free
memfree=$( free -mh |grep Mem: | awk '{print $7}' )

#how many connections there are to the current machine
connections=$( netstat | grep tcp )

#who is logged in
users=$( who )

echo -en "\e[96mThis is a snapshot of your current system:

                \e[35m        Disk Used: $diskused
                \e[36m        Free Memory: $memfree
                \e[94m        Logged In Users: $users
                        
\e[92mOpen Internet Connections:
$connections
"

echo " 
color info:
http://misc.flogisoft.com/bash/tip_colors_and_formatting
http://wiki.bash-hackers.org/scripting/style
http://help.ubuntu.com/community/UnityLaunchersAndDesktopFiles
"
