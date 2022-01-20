#!/bin/bash

set -eo pipefail

path="$1"

declare -i maxbond=100000000000

# querytype="jq -r '.body.messages[0][\"@type\"]' $path"

denomquery=$(jq -r '.body.messages[0].value.denom' $path)

amountquery=$(jq -r '.body.messages[0].value.amount' $path)

# only allow MsgCreateValidator transactions.
# if [ $querytype -neq "/cosmos.staking.v1beta1.MsgCreateValidator" ]; then
#   echo "spurious transactions"
#   exit 1
# fi

# only allow "utree" tokens to be bonded
if [ $denomquery != "utree" ]; then
  echo "invalid denomination"
  exit 1
fi

# limit the amount that can be bonded

if [ $amountquery -gt $maxbond ]; then
  echo "bonded too much: $amt > $maxbond"
  exit 1
fi

exit 0
