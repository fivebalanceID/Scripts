# FBN Coin
Shell script to install a [Fivebalance Masternode Testnet](https://fivebalance.com) on a Linux server running Ubuntu 16.04. Use it on your own risk.  
This script will install **FBN Testnet 1.0**

***
## Installation:
```
wget -q https://raw.githubusercontent.com/fivebalanceID/Scripts/master/testnet.sh
bash testnet.sh
```
***

## Desktop wallet setup

After the MN is up and running, you need to configure the desktop wallet accordingly. Here are the steps for Windows Wallet
1. Open the Gin Coin Desktop Wallet.
2. Go to RECEIVE and create a New Address: **MN1**
3. Send **1000000** **FBN** to **MN1**.
4. Wait for 10 confirmations.
5. Go to **Help -> "Debug Window - Console"**
6. Type the following command: **masternode outputs**
7. Go to  ** Masternodes tab -> "My Master nodes - Create"
8. Add the following entry:

* Alias: **MN1**
* Address: **VPS_IP:PORT**
* Privkey: **Masternode Private Key**
* TxHash: **First value from Step 6**
* Output index:  **Second value from Step 6**
9. Save and close the file.
10. Close the wallet and start it again. Make sure the wallet is unlocked.
11.  Go to Masternodes tab -> "My Master nodes - start "

## Usage:
```
fbncd mnsync status
fbncd getinfo
fbncd masternode status
```





