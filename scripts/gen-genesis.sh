#!/bin/bash

CHAIN_ID=darkmatter-1
CONFIG=~/.coho/config
FAUCET_ACCOUNTS=("coho1wuufq6vkl4qmmgzs06mtgatklpxr5zr4qqnk4k" "coho1anc2w8g3ll9ypr4cdtl5j244eef2nsz5anre7k")

rm -rf ~/.coho

coho init dummy --chain-id $CHAIN_ID

rm -rf $CONFIG/gentx && mkdir $CONFIG/gentx
rm -rf $CONFIG/genesis.json

cp $CHAIN_ID/genesis.json $CONFIG/genesis.json
sed -i "s/\"stake\"/\"utree\"/g" ~/.coho/config/genesis.json

for i in $CHAIN_ID/gentxs/*.json; do
  echo $i
  coho add-genesis-account $(jq -r '.body.messages[0].delegator_address' $i) 100000000000utree
  cp $i $CONFIG/gentx/
done

for addr in "${FAUCET_ACCOUNTS[@]}"; do
    echo "Adding faucet addr: $addr"
    coho add-genesis-account $addr 10000000000000utree
done

coho collect-gentxs

coho validate-genesis

cp $CONFIG/genesis.json $CHAIN_ID
