#!/bin/sh
COHO_HOME="/tmp/coho$(date +%s)"
RANDOM_KEY="randomcohovalidatorkey"
CHAIN_ID=darkmatter-1

GENTX_FILE=$(find ./$CHAIN_ID/gentxs -iname "*.json")
LEN_GENTX=$(echo ${#GENTX_FILE})

# GENTX_STARTDATE=$(date -d '05-02-2021 15:00:00' '+%d/%m/%Y %H:%M:%S')
# GENTX_DEADLINE=$(date -d '07-02-2021 15:00:00' '+%d/%m/%Y %H:%M:%S')
now=$(date +"%d/%m/%Y %H:%M:%S")

# if [ $now -le $GENTX_STARTDATE ]; then
#     echo 'Gentx submission is not open yet. Please close the PR and raise a new PR after 05-Feb-2021 15:00:00'
#     exit 0
# fi

# if [ $now -ge $GENTX_DEADLINE ]; then
#     echo 'Gentx submission is closed'
#     exit 0
# fi

if [ $LEN_GENTX -eq 0 ]; then
    echo "No new gentx file found."
else
    # set -e

    # echo "GentxFile::::"
    # echo $GENTX_FILE

    # ./scripts/check-gentx-amount.sh "$GENTX_FILE" || exit 1

    # echo "...........Init Coho.............."

    # git clone https://github.com/coho-network/coho-ledger
    # cd coho-ledger
    # git checkout v0.6.0
    # make build
    # chmod +x ./build/coho

    # ./build/coho keys add $RANDOM_KEY --keyring-backend test --home $coho_HOME

    # ./build/coho init --chain-id $CHAIN_ID validator --home $coho_HOME

    # echo "..........Fetching genesis......."
    # rm -rf $coho_HOME/config/genesis.json
    # curl -s https://raw.githubusercontent.com/coho-network/testnets/master/$CHAIN_ID/genesis.json > $coho_HOME/config/genesis.json

    # sed -i '/genesis_time/c\   \"genesis_time\" : \"2021-01-01T00:00:00Z\",' $coho_HOME/config/genesis.json

    # GENACC=$(cat ../$GENTX_FILE | sed -n 's|.*"delegator_address":"\([^"]*\)".*|\1|p')

    # echo $GENACC

    # ./build/coho add-genesis-account $RANDOM_KEY 1000000000000utree --home $coho_HOME \
    #     --keyring-backend test
    # ./build/coho add-genesis-account $GENACC 100000000000utree --home $coho_HOME

    # ./build/coho gentx $RANDOM_KEY 900000000000utree --home $coho_HOME \
    #     --keyring-backend test --chain-id $CHAIN_ID
    # cp ../$GENTX_FILE $coho_HOME/config/gentx/

    # echo "..........Collecting gentxs......."
    # ./build/coho collect-gentxs --home $coho_HOME
    # sed -i '/persistent_peers =/c\persistent_peers = ""' $coho_HOME/config/config.toml

    # ./build/coho validate-genesis --home $coho_HOME

    # echo "..........Starting node......."
    # ./build/coho start --home $coho_HOME &

    # sleep 5s

    # echo "...checking network status.."

    # ./build/coho status --node http://localhost:26657

    # echo "...Cleaning the stuff..."
    # killall coho >/dev/null 2>&1
    # rm -rf $coho_HOME >/dev/null 2>&1
fi
