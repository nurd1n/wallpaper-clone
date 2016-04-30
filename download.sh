mkdir -p /home/clone/data/{ipawal,domainawal,ekstensionawal,userdbawal,passdbawal,inisialawal,domainbaru,ekstensionbaru,passmysql,inisialbaru}
curl -L https://github.com/nurd1n/wallpaper-clone/raw/secret/start.sh -o /home/clone/start.sh
curl -L https://github.com/nurd1n/wallpaper-clone/raw/secret/build.sh -o /home/clone/build.sh
curl -L https://github.com/nurd1n/wallpaper-clone/raw/secret/start.txt -o /home/clone/start.txt
chmod 755 /home/clone/*.sh
