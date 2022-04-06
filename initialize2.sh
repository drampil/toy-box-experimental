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
curl https://raw.githubusercontent.com/drampil/toy-box/main/28.txt

echo "This manager will update or install the following scripts."
echo "Installed or updated the following:"
echo
echo "Mega cURL"
echo "Host Hunter as a Command Line Tool"
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
echo "Checking for root powers."
sleep 1


cd $HOME && mkdir scripts && cd scripts

# Initialize the download the script series and make them executables.
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


# Install Test Keys
echo '90cb4aac-e7cf-4ce6-a646-8fd01074f9c5' > urlscankey.txt
echo '77bf2c05f05e318259df7ef3c1a557b802c41a8bb66b30f01eb2fd395099cb0c' > vtkey.txt

# List the scripts downloaded.
echo "Installed or updated the following:"
echo
echo "1. Mega cURL"
echo "2. Host Hunter as a Command Line Tool"
echo "3. Javelin"
echo "4. Ghost"
echo "5. Warpath"
echo "6. Aris-C"
echo "7. Tracer"
echo "8. Imgr-C" 
echo "9. Tesseract as a Command Line Tool"
echo

# Install Firewalld and Whois
echo "Installing systools and changing permissions..."
sudo yum install whois -y
echo

# Install new .bashrc parameters
if grep -q bash identity.sh ".bashrc"; then
  echo "Identity script already loaded"
else
        "echo 'bash identity.sh' >> .bashrc"
fi

# Display .bashrc identity
source .bashrc

# Check file integrity
echo "Checking file integrity."
sleep 1

FILE=megac
if [ -f "$FILE" ]; then
    echo "$FILE has been installed successfully."
else 
    echo "$FILE has not been installed successfully."
fi

FILE=javelin
if [ -f "$FILE" ]; then
    echo "$FILE has been installed successfully."
else 
    echo "$FILE has not been installed successfully."
fi

FILE=ghost
if [ -f "$FILE" ]; then
    echo "$FILE has been installed successfully."
else 
    echo "$FILE has not been installed successfully."
fi

FILE=warpath
if [ -f "$FILE" ]; then
    echo "$FILE has been installed successfully."
else 
    echo "$FILE has not been installed successfully."
fi

FILE=aris
if [ -f "$FILE" ]; then
    echo "$FILE has been installed successfully."
else 
    echo "$FILE has not been installed successfully."
fi

FILE=tracer
if [ -f "$FILE" ]; then
    echo "$FILE has been installed successfully."
else 
    echo "$FILE has not been installed successfully."
fi

FILE=imgur
if [ -f "$FILE" ]; then
    echo "$FILE has been installed successfully."
else 
    echo "$FILE has not been installed successfully."
fi

FILE=tessbeta
if [ -f "$FILE" ]; then
    echo "$FILE has been installed successfully."
else 
    echo "$FILE has not been installed successfully."
fi

FILE=hostc
if [ -f "$FILE" ]; then
    echo "$FILE has been installed successfully."
else 
    echo "$FILE has not been installed successfully."
fi

# Create symbolic links to root directory
cd $HOME
ln -s scripts/megac megac
ln -s scripts/javelin javelin
ln -s scripts/ghost ghost
ln -s scripts/warpath warpath
ln -s scripts/aris aris
ln -s scripts/tracer tracer
ln -s scripts/imgur imgur
ln -s scripts/tessbeta tess
ln -s scripts/hostc hostc

# Cleanup
mv tessbeta tess

echo "Toytbox has been installed or updated to it's latest version."
ls -li
