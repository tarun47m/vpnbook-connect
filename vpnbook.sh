#!/bin/bash

# dpkg -l | grep -qw openvpn || sudo apt-get install -yyq openvpn
# dpkg -l | grep -qw tesseract || sudo apt-get install -yyq tesseract
# dpkg -l | grep -qw fzf || sudo apt-get install -yyq fzf

USERNAME="vpnbook"
curl https://www.vpnbook.com/password.php -o vpnbook-pass.jpg
PASSWORD=`tesseract vpnbook-pass.jpg - | grep -Eo "[A-Za-z0-9]+"`
rm vpnbook-pass.jpg

echo "${USERNAME}
${PASSWORD}" > pass.txt

# connect vpnbook
FILENAME=$(ls | grep ".ovpn" | fzf)
sudo openvpn --config $FILENAME --auth-user-pass pass.txt
