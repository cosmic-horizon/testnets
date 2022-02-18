# CONTINUE HERE IF YOU FILLED OUT THE WALLET REGISTRATION FORM

## Download Genesis File

```
curl -s https://raw.githubusercontent.com/cosmic-horizon/testnets/main/darkmatter-1/genesis.json > $HOME/.coho/config/genesis.json
```

## Find your wallet address

Open the genesis file and search for the address you submitted in the form.  If you see your address then you made it into the genesis file and will be a validator for the testnet.  If you do not see your address or if you were not able to fill out the form then you will need to wait until next testnet!

# STOP HERE IF YOU DID NOT MAKE IT INTO THE GENESIS FILE

## Submit gentx

If you were one of the lucky validators to make it into the genesis file you can now submit your gentx using the command below.

```
cohod gentx <your validator key name> 1000000000000ucoho --chain-id darkmatter-1
```

example:
```
cohod gentx coho-tester-wallet 1000000000000ucoho --chain-id darkmatter-1
```

## Submit Pull Request

In order to submit your gentx open up a pull request to this repo placing your gentx into the 'gentxs' folder, our automated test will check it for validity and after that it will be merged. **Very Important** Do not change the name of your gentx file.