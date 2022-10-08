#!/bin/bash
cd ~

echo -n "Success....Blockchain is now downloading press Ctrl-C to cancel but it will take longer to sync from 0. And you will have to start verge manual"
sudo rm QT-Wallet*.zip
# echo "wget --no-check-certificate " $(lynx --dump --listonly https://verge-blockchain.com/ | grep -o "https://verge-blockchain*.*zip" | head -1 ) > link.sh
echo "wget --no-check-certificate https://verge-blockchain.com/download/"$(lynx --source https://verge-blockchain.com/ | grep -o "**QT-Wallet**_.*zip" | head -1 ) > link.sh
sh link.sh
sudo rm -Rf ~/.VERGE/blocks
sudo rm -Rf ~/.VERGE/chainstate
sudo rm -Rf ~/.VERGE/tor
sudo rm ~/.VERGE/peers.dat
unzip -o QT-Wallet*.zip -d ~/.VERGE
sudo rm QT-Wallet*.zip
