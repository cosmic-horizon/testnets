# Create a Cosmic Horizon Network Validator

### Prerequisites 
Install the coho binary and start your node by following these [instructions](https://github.com/cosmic-horizon/testnets/blob/main/README.md)

### Create a Validator

**Ensure you node is fully synced before running this command!**

```
cohod tx staking create-validator \
  --amount=900000000000ucoho \
  --pubkey=$(regen tendermint show-validator) \
  --moniker="<node_moniker>" \
  --chain-id=darkmatter-1 \
  --commission-rate="0.10" \
  --commission-max-rate="0.20" \
  --commission-max-change-rate="0.01" \
  --min-self-delegation="1" \
  --gas="auto" \
  --from=<key_name>
```