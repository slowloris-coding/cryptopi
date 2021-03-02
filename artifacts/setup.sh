#!/bin/bash
getDistPath () {
    cd ..;
    cd dist/
    output=$(pwd)
    cd ..;
    cd artifacts/;
    echo $output
}

recho () {
    RED='\033[0;31m'
    NC='\033[0m' # No Color
    printf "${RED}${1}${NC}\n";
}

gecho () {
    RED='\033[0;32m'
    NC='\033[0m' # No Color
    printf "${RED}${1}${NC}\n";
}

cecho () {
    RED='\033[0;36m'
    NC='\033[0m' # No Color
    printf "${RED}${1}${NC}\n";
}

cecho "Updating system"
sudo apt-get update
sudo apt-get upgrade -y
gecho "System updated"
echo "---------------"
cecho "Installing webserver (apache2)"
sudo apt-get install apache2 -y
gecho "Install finished"
echo " "
cecho "Setting up Document root"
distPath=$(getDistPath)
echo $distPath
sudo sed -i "s|DocumentRoot.*|DocumentRoot $distPath|g" /etc/apache2/sites-enabled/000-default.conf
gecho "Document root adjusted"
cecho "Setting permissions for the webserver"
sudo cat <<EOT >> /etc/apache2/apache2.conf
<Directory $distPath>
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
</Directory>
EOT
gecho "Permissions set"
cecho "Restarting webserver"
sudo systemctl restart apache2
ip=$(hostname -I | cut -d ' ' -f1)
gecho "Webserver restarted ---> Managementpage is now available under http://$ip/"
