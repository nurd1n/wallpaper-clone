mkdir -p /home/clone/data
touch /home/clone/data/ipawal
touch /home/clone/data/domainawal
touch /home/clone/data/ekstensionawal
touch /home/clone/data/userdbawal
touch /home/clone/data/passdbawal
touch /home/clone/data/inisialawal
touch /home/clone/data/domainbaru
touch /home/clone/data/ekstensionbaru
touch /home/clone/data/passmysql
touch /home/clone/data/inisialbaru
curl -L https://github.com/nurd1n/wallpaper-clone/raw/secret/start.sh -o /home/clone/start.sh
curl -L https://github.com/nurd1n/wallpaper-clone/raw/secret/build.sh -o /home/clone/build.sh
curl -L https://github.com/nurd1n/wallpaper-clone/raw/secret/start.txt -o /home/clone/start.txt
chmod 755 /home/clone/*.sh
