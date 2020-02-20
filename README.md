# vpnbook-connect

### Prerequisite
```sh
dpkg -l | grep -qw openvpn || sudo apt-get install -yyq openvpn
dpkg -l | grep -qw tesseract || sudo apt-get install -yyq tesseract
dpkg -l | grep -qw fzf || sudo apt-get install -yyq fzf
```
### Install
```sh
mkdir ~/vpnbook
cd ~/vpnbook
curl https://raw.githubusercontent.com/tarun47m/vpnbook-connect/master/vpnbook.sh -o vpnbook.sh
chmod +x vpnbook.sh

./vpnbook.sh
```
### Download Files
```sh
cd ~/vpnbook
wget -r -nd -l 1 -A zip https://www.vpnbook.com/
find . -name '*.zip' -exec unzip {} \;
```
