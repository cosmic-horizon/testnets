# Create a Cosmic Horizon Network Validator

### Prerequisites 
Install the coho binary and start your node by following these [instructions](https://github.com/cosmic-horizon/testnets/blob/main/README.md)

Make sure you have increased the file limit size before operating a validator

```
sudo su -c "echo 'fs.file-max = 65536' >> /etc/sysctl.conf"
sysctl -p

sudo su -c "echo '* hard nofile 94000' >> /etc/security/limits.conf"
sudo su -c "echo '* soft nofile 94000' >> /etc/security/limits.conf"

sudo su -c "echo 'session required pam_limits.so' >> /etc/pam.d/common-session"
```

Check to make sure the changes were accepted.  You may need to restart if the output is not `94000`

```
ulimit -n
```

### Create a Validator

**Ensure you node is fully synced before running this command!**

```
cohod tx staking create-validator \
  --amount=900000000000ucoho \
  --pubkey=$(cohod tendermint show-validator) \
  --moniker="<node_moniker>" \
  --chain-id=darkmatter-1 \
  --commission-rate="0.10" \
  --commission-max-rate="0.20" \
  --commission-max-change-rate="0.01" \
  --min-self-delegation="1" \
  --gas="auto" \
  --from=<key_name>
```