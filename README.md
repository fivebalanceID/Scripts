# FBN Coin
Shell script to install [Fivebalance Masternode](https://fivebalance.com) on a Linux server running Ubuntu 16.04. Use it on your own risk.  
This script will install **FBN Masternode 1.0**

***
## Installation:
```
wget https://raw.githubusercontent.com/fivebalanceID/Scripts/master/fbn.sh
bash fbn.sh


```
***

## Desktop wallet setup

After the MN is up and running, you need to configure the desktop wallet accordingly. Here are the steps for Windows Wallet
1. Download Destop Wallet [Fivebalance Desktop Wallet](https://github.com/fivebalanceID/Wallet-FBN/raw/master/fivebalance-qt.zip) and Open the FBN Coin Desktop Wallet. 
2. Close your wallet and open the Fivebalance Appdata folder. Its location depends on your OS.

- **Windows:** Press Windows+R and write %appdata% - there, open the folder Fivebalance.
- **Linux:** Open ~/.fivebalance/

In your appdata folder, open fivebalance.conf with a text editor and add a new line in this format to the bottom of the file:

```text
addnode=23.226.138.247:5555
addnode=23.226.138.246:5555
addnode=23.226.138.253:5555
addnode=107.175.255.15:5555
addnode=107.175.255.158:5555
addnode=107.175.255.155:5555
addnode=192.227.204.207:5555
addnode=192.227.204.212:5555
addnode=192.227.204.209:5555
addnode=192.227.204.208:5555
addnode=192.227.204.210:5555
addnode=198.46.190.10:5555
addnode=198.46.190.44:5555
addnode=198.46.190.5:5555
addnode=192.227.204.211:5555
addnode=34.73.7.5:5555
staking=1
``` 
Save file fivebalance.conf and Reopen your wallet.

3. Go to RECEIVE and create a New Address: **MN1**
4. Send **1000000** **FBN** to **MN1**.
5. Wait for 10 confirmations.
6. Go to **Help -> "Debug Window - Console"**
7. Type the following command: **masternode outputs**
8. Go to  **Masternodes tab -> "My Master nodes - Create"**
9. Add the following entry:

* Alias: **MN1**
* Address: **VPS_IP:PORT**
* Privkey: **Masternode Private Key**
* TxHash: **First value from Step 7**
* Output index:  **Second value from Step 7**

10. Save and close the file.
11. Close the wallet and start it again. Make sure the wallet is unlocked.
12.  Go to Masternodes tab -> "My Master nodes - start "

## Usage:
```
fbncd getinfo #check Block sync status 
fbncd masternode status #check your masternod status, if status 9 masternode working, if 2 not working, if 8 block still sync 
```





