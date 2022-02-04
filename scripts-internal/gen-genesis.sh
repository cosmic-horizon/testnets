#!/bin/bash

CHAIN_ID=darkmatter-1
CONFIG=~/.coho/config

rm -rf ~/.coho

coho init dummy --chain-id $CHAIN_ID

rm -rf $CONFIG/gentx && mkdir $CONFIG/gentx
rm -rf $CONFIG/genesis.json

cp $CHAIN_ID/genesis.json $CONFIG/genesis.json
sed -i "s/\"stake\"/\"ucoho\"/g" ~/.coho/config/genesis.json

for i in $CHAIN_ID/gentxs/*.json; do
  echo $i
  coho add-genesis-account $(jq -r '.body.messages[0].delegator_address' $i) 100000000000ucoho
  cp $i $CONFIG/gentx/
done

coho collect-gentxs

coho validate-genesis

cp $CONFIG/genesis.json $CHAIN_ID
