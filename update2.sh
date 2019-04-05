killall fbncd
cd /usr/local/bin
mv fbncd fbncd.old
wget https://github.com/fivebalanceID/Fivebalance/releases/download/2.0.0.0/fbncd
chmod u+x fbncd
cd /root/.fivebalance
cp wallet.dat fivebalance.conf /root/
rm -rf *
cd /root/
cp fivebalance.conf wallet.dat .fivebalance/
reboot 
