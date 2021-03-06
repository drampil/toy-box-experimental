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
echo

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
sudo yum install firewalld -y
sudo yum install whois -y
echo

# Install HTTPD
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo chown -R $USER:$USER /var/www

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

# Cleanup
mv tessbeta tess
