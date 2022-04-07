#!/bin/bash

echo
echo -e "████████╗ ██████╗ ██╗   ██╗    ██████╗  ██████╗ ██╗  ██╗"
echo -e "╚══██╔══╝██╔═══██╗╚██╗ ██╔╝    ██╔══██╗██╔═══██╗╚██╗██╔╝"
echo -e "   ██║   ██║   ██║ ╚████╔╝     ██████╔╝██║   ██║ ╚███╔╝ "
echo -e "   ██║   ██║   ██║  ╚██╔╝      ██╔══██╗██║   ██║ ██╔██╗ "
echo -e "   ██║   ╚██████╔╝   ██║       ██████╔╝╚██████╔╝██╔╝ ██╗"
echo -e "   ╚═╝    ╚═════╝    ╚═╝       ╚═════╝  ╚═════╝ ╚═╝  ╚═╝"
echo "Install Wizard"
lastUpdate=$(curl -s "https://api.github.com/repos/drampil/toy-box-experimental/commits" | grep -w -m 1 "date" | awk '{print $2}' | sed 's/"//g;')
echo "Latest Update: " $lastUpdate

# Update Whois and Nmap
sudo yum install whois -y
sudo yum install nmap -y

# Pull wasn't working so I decided to wipe out the directory and redownload the repo each time
if [ ! -d toy-box-experimental ]
then
        git clone https://github.com/drampil/toy-box-experimental
else
        rm -rf toy-box-experimental
        git clone https://github.com/drampil/toy-box-experimental
fi

cd toy-box-experimental
toyarr=(*.sh)

for i in ${toyarr[@]}
do
        echo "Installed: " $i && chmod +x $i
done

cd ../

# Create sym links to root
for i in ${!toyarr[@]}; do
  ln -sf toy-box-experimental/${toyarr[$i]} ${toyarr[$i]}
done

echo "Symbolic Links Created"

