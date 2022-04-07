#!/bin/bash

echo
echo -e "████████╗ ██████╗ ██╗   ██╗    ██████╗  ██████╗ ██╗  ██╗"
echo -e "╚══██╔══╝██╔═══██╗╚██╗ ██╔╝    ██╔══██╗██╔═══██╗╚██╗██╔╝"
echo -e "   ██║   ██║   ██║ ╚████╔╝     ██████╔╝██║   ██║ ╚███╔╝ "
echo -e "   ██║   ██║   ██║  ╚██╔╝      ██╔══██╗██║   ██║ ██╔██╗ "
echo -e "   ██║   ╚██████╔╝   ██║       ██████╔╝╚██████╔╝██╔╝ ██╗"
echo -e "   ╚═╝    ╚═════╝    ╚═╝       ╚═════╝  ╚═════╝ ╚═╝  ╚═╝"
echo

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

for i in ${!toyarr[@]}; do
  ln -sf toy-box-experimental/${toyarr[$i]} ${toyarr[$i]}
done

