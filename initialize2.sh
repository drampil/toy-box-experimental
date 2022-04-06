#!/bin/bash

# Instructing and header text.
echo "Initiating Toy - Box update... Super user powers required ahead."
sleep 1
echo
echo -e "████████╗ ██████╗ ██╗   ██╗    ██████╗  ██████╗ ██╗  ██╗"
echo -e "╚══██╔══╝██╔═══██╗╚██╗ ██╔╝    ██╔══██╗██╔═══██╗╚██╗██╔╝"
echo -e "   ██║   ██║   ██║ ╚████╔╝     ██████╔╝██║   ██║ ╚███╔╝ "
echo -e "   ██║   ██║   ██║  ╚██╔╝      ██╔══██╗██║   ██║ ██╔██╗ "
echo -e "   ██║   ╚██████╔╝   ██║       ██████╔╝╚██████╔╝██╔╝ ██╗"
echo -e "   ╚═╝    ╚═════╝    ╚═╝       ╚═════╝  ╚═════╝ ╚═╝  ╚═╝"
echo

echo "This manager will update or install the following scripts."
echo
echo "Mega cURL"
echo "Host Hunter"
echo "Javelin"
echo "Ghost"
echo "Warpath"
echo "Aris-C"
echo "Tracer"
echo "Imgr-C" 
echo "Tesseract as a Command Line Tool"
echo
read -p "Proceed? [y/n]" advance

if [ ! "$advance" == "y" ]; then
  echo "User cancelled install, exiting..."
  exit
fi

echo

# Check for root access
echo "Checking for root powers."
sleep 1
user=$(whoami)
check=$(cat /etc/group | grep wheel | cut -d ":" -f 4)
if [[ $user = $check ]];
then
        echo "You have root powers according to wheel, proceeding"
        echo
else
        echo "You don't have root power, exiting"
        exit
fi

cd $HOME && mkdir scripts && cd scripts

# Initialize the download the script series and make them executables
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/megac && chmod +x megac;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/javelin && chmod +x javelin;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/ghost && chmod +x ghost;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/warpath && chmod +x warpath;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/aris && chmod +x aris;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/tracer && chmod +x tracer;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/imgur && chmod +x imgur;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/tessbeta && chmod +x tessbeta;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/hostc && chmod +x hostc;
wget -q -N https://raw.githubusercontent.com/drampil/toy-box/main/identity.sh && chmod +x identity.sh;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/template

# Check for API keys
echo

FILE=urlscankey.txt
if [ -f "$FILE" ]; then
    echo "$FILE URLSCAN Key already exist, proceeding."
else 
    read -p "Enter URLSCAN.IO KEY" urlkey
    echo '$urlkey' > urlscankey.txt
fi

FILE=vtkey.txt
if [ -f "$FILE" ]; then
    echo "$FILE VT Key already exist, proceeding."
else 
    read -p "Enter VIRUSTOTAL KEY" vtkey
    echo '$vtkey' > vtkey.txt
fi

echo

# Install Whois
echo "Installing systools"
sudo yum install whois -y
sudo yum install nmap -y
echo

# Install new .bashrc parameters
if grep -q bash identity.sh ".bashrc"; then
  echo "Identity script already loaded"
else
        "echo 'bash identity.sh' >> .bashrc"
fi

# Check file integrity
echo "Checking file integrity."
sleep 1

FILE=megac
if [ -f "$FILE" ]; then
    toyArray+=(megac)
else 
    echo "$FILE has not been installed successfully."
fi

FILE=javelin
if [ -f "$FILE" ]; then
    toyArray+=(javelin)
else 
    echo "$FILE has not been installed successfully."
fi

FILE=ghost
if [ -f "$FILE" ]; then
    toyArray+=(ghost)
else 
    echo "$FILE has not been installed successfully."
fi

FILE=warpath
if [ -f "$FILE" ]; then
    toyArray+=(warpath)
else 
    echo "$FILE has not been installed successfully."
fi

FILE=aris
if [ -f "$FILE" ]; then
    toyArray+=(aris)
else 
    echo "$FILE has not been installed successfully."
fi

FILE=tracer
if [ -f "$FILE" ]; then
    toyArray+=(tracer)
else 
    echo "$FILE has not been installed successfully."
fi

FILE=imgur
if [ -f "$FILE" ]; then
    toyArray+=(imgur)
else 
    echo "$FILE has not been installed successfully."
fi

FILE=tessbeta
if [ -f "$FILE" ]; then
    toyArray+=(tessbeta)
else 
    echo "$FILE has not been installed successfully."
fi

FILE=hostc
if [ -f "$FILE" ]; then
    toyArray+=(hostc)
else 
    echo "$FILE has not been installed successfully."
fi

echo

# Create symbolic links to root directory
cd $HOME

for i in ${!toyArray[@]}; do
  ln -s scripts/${toyArray[$i]} ${toyArray[$i]}
done

echo "Toytbox has been installed or updated the following to latest versions."
echo

for i in ${!toyArray[@]}; do
  echo "Installed ${toyArray[$i]} Successfully"
done

ll
