FBN Coin Testnet Installer Script

Shell script to install a FBN Coin Masternode on a Linux server running Ubuntu 16.04. Use it on your own risk.
This script will install FBN 1.1.0.0
Installation:

wget -q https://github.com/fivebalanceID/Scripts/blob/master/testnet.sh
<p> bash testnet.sh

Desktop wallet setup

After the MN is up and running, you need to configure the desktop wallet accordingly. Here are the steps for Windows Wallet

    1. Open the FBN Coin Desktop Wallet.
    2. Go to RECEIVE and create a New Address: MN1
    3. Send 1000000 FBN to MN1.
    4. Wait for confirmations.
    5. Go to Help -> "Debug Window - Console"
    6. Type the following command: masternode outputs
    7. Go to Masternodes tab -> "My Master nodes - Create"
    8. Add the following entry:

    Alias Address Privkey TxHash Output_index

    Alias: MN1
    Address: VPS_IP:PORT
    Privkey: Masternode Private Key
    TxHash: First value from Step 6
    Output index: Second value from Step 6

    OK and close the file.
    close the wallet and start it again. Make sure the wallet is unlocked.
    Go to Masternodes tab -> "My Master nodes - start " 
    

Usage:

    fbncd mnsync status
    fbncd getinfo
    fbncd masternode status

