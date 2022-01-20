#!/usr/bin/env bash

# Write all validator addresses to validators.txt
gaiacli query staking validators -o json | jq '.[] | .operator_address' -r > validators.txt

# Write all delegator addresses to delegators.txt
touch delegators.txt
touch addrs.txt
while read validator; do
  gaiacli query staking delegations-to $validator -o json | jq '.[] | .delegator_address' -r >> delegators.txt
  convert_to_xrn_addr $validator >> addrs.txt
done <validators.txt

sort delegators.txt | uniq -u > unique-delegators.txt

while read delegator; do
  convert_to_xrn_addr $delegator >> addrs.txt
done <unique-delegators.txt

sort addrs.txt | uniq -u > xrn-addresses.txt

#rm validators.txt delegators.txt unique-delegators.txt addrs.txt


