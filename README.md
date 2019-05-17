# FBN Coin
Shell script to install [Fivebalance Masternode](https://fivebalance.com) on a Linux server running Ubuntu 16.04. Use it on your own risk.  
This script will install **FBN Masternode 3.0**

***
## Installation on VPS:
```
wget https://raw.githubusercontent.com/fivebalanceID/Scripts/master/fbn.sh
bash fbn.sh


```
***

## Desktop wallet setup

After the MN is up and running, you need to configure the desktop wallet accordingly. Here are the steps for Windows Wallet
1. Open the Fivebalance Coin Desktop Wallet.
2. Go to RECEIVE and create a New Address: **MN1**
3. Send **1000000** **FBN** to **MN1**.
4. Wait for 15 confirmations.
5. Go to **Tools -> "Debug console - Console"**
6. Type the following command: **masternode outputs**
7. Go to  ** Tools -> "Open Masternode Configuration File"
8. Add the following entry:
```
Alias Address Privkey TxHash Output_index
```
* Alias: **MN1**
* Address: **VPS_IP:5555**
* Privkey: **Masternode Private Key**
* TxHash: **First value from Step 6**
* Output index:  **Second value from Step 6**
9. Save and close the file.
10. Go to **Masternode Tab**. If you tab is not shown, please enable it from: **Settings - Options - Wallet - Show Masternodes Tab**
11. Click **Update status** to see your node. If it is not shown, close the wallet and start it again. Make sure the wallet is unlocked.
12. Start masternode at masternode Tab...click on IP address and then **start alias** or Open **Debug Console** and type:
```
startmasternode "alias" "mn1" "mn1"
```
***



## Usage:
```
fivebalance-cli mnsync status
fivebalance-cli getinfo
fivebalance-cli masternode status
```

Also, if you want to check/start/stop **fivebalance** , run one of the following commands as **root**:

**Ubuntu 16.04**:
```
systemctl status fivebalance #To check the service is running.
systemctl start fivebalance #To start fivebalance service.
systemctl stop fivebalance #To stop fivebalance service.
systemctl is-enabled fivebalance #To check whetether fivebalance service is enabled on boot or not.
```

***





