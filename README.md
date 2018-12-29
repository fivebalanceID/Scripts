# FBN Coin
Shell script to install [Fivebalance Masternode Testnet](https://fivebalance.com) on a Linux server running Ubuntu 16.04. Use it on your own risk.  
This script will install **FBN Testnet 1.0**

***
## Installation:
```
wget https://raw.githubusercontent.com/fivebalanceID/Scripts/master/testnet.sh
bash testnet.sh


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
addnode=68.183.176.124
addnode=107.173.102.22:4444
addnode=107.172.60.49:4444
testnet=1
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





