#!/bin/bash

# Instructing and header text.
echo "Initiating Toy - Box update..."
sleep 1
echo
echo -e "████████╗ ██████╗ ██╗   ██╗    ██████╗  ██████╗ ██╗  ██╗"
echo -e "╚══██╔══╝██╔═══██╗╚██╗ ██╔╝    ██╔══██╗██╔═══██╗╚██╗██╔╝"
echo -e "   ██║   ██║   ██║ ╚████╔╝     ██████╔╝██║   ██║ ╚███╔╝ "
echo -e "   ██║   ██║   ██║  ╚██╔╝      ██╔══██╗██║   ██║ ██╔██╗ "
echo -e "   ██║   ╚██████╔╝   ██║       ██████╔╝╚██████╔╝██╔╝ ██╗"
echo -e "   ╚═╝    ╚═════╝    ╚═╝       ╚═════╝  ╚═════╝ ╚═╝  ╚═╝"
                                                       
# Initialize the download the script series and make them executables.
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/megac && chmod +x megac;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/javelin && chmod +x javelin;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/ghost && chmod +x ghost;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/warpath && chmod +x warpath;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/aris && chmod +x aris;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/tracer && chmod +x tracer;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/imgur && chmod +x imgur;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/tess && chmod +x tess;
wget -N -nv https://raw.githubusercontent.com/drampil/toy-box/main/hostc && chmod +x hostc;
wget -q -N https://raw.githubusercontent.com/drampil/toy-box/main/identity.sh && chmod +x identity.sh;
echo

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

# Install Firewalld and Whois
sudo yum install firewalld -y
sudo yum install whois -y

# Install new .bashrc parameters
echo 'bash identity.sh' >> .bashrc
source .bashrc

