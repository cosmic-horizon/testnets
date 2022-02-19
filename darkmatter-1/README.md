# Cosmic Horizon Network Testnet: darkmatter-1 Testnet

## Quick Links
Genesis: https://raw.githubusercontent.com/cosmic-horizon/testnets/main/darkmatter-1/genesis.json

Git tag: coho v0.1

Block explorer: **coming soon**

Seeds: TBA

## Hardware Requirements
Here are the minimal hardware configs required for running a validator/sentry node
 - 8GB RAM
 - 4vCPUs
 - 200GB Disk space

## Software Requirements

- Ubuntu 18.04 or higher
- [Go v1.17.1](https://golang.org/doc/install)
- [Starport](https://docs.starport.network/guide/install.html)

# Install CoHo, Generate Wallet and Submit GenTx

## Install Go version 1.17.1

```
sudo apt update  
sudo apt install build-essential jq wget git -y

wget https://dl.google.com/go/go1.17.1.linux-amd64.tar.gz
tar -xvf go1.17.1.linux-amd64.tar.gz
sudo mv go /usr/local
```

Now add go to your bashrc -
```
echo "" >> ~/.bashrc
echo 'export GOPATH=$HOME/go' >> ~/.bashrc
echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
echo 'export GOBIN=$GOPATH/bin' >> ~/.bashrc
echo 'export PATH=$PATH:/usr/local/go/bin:$GOBIN' >> ~/.bashrc

# use this new bashrc configuration
source ~/.bashrc
```

## Install Starport

This command invokes curl to download the install script and pipes the output to bash to perform the installation. The starport binary is installed in /usr/local/bin.

To learn more or customize the installation process, see [Starport installer docs](https://github.com/allinbits/starport-installer) on GitHub.

```
curl https://get.starport.network/starport! | bash
```

**(Optional)**
Starport installation requires write permission to the /usr/local/bin/ directory. If the installation fails because you do not have write permission to /usr/local/bin/, run the following command:

```
curl https://get.starport.network/starport | bash
```
Then run this command to move the starport executable to /usr/local/bin/:
```
sudo mv starport /usr/local/bin/
```

## Install CoHo

These next steps will install the cohod binary which is used to run your chain.
```
# Clone the Repo
git clone https://github.com/cosmic-horizon/coho.git

# Install CoHo
cd ~/coho
starport chain build
```

### Initiate CoHo Instance

```
cd ~
cohod init <your moniker> --chain-id darkmatter-1
```

example:
```
cohod init coho-tester --chain-id darkmatter-1

# replace coho-tester with your moniker
```

### Create Validator Key
It's very important that after you run this command that you save the seed phrase that is generated.  If you do not
save you phrase, you will not be able to recover this account.

```
cohod keys add <your validator key name>
```

example:
```
cohod keys add coho-test-wallet

# replace coho-tester-wallet with a wallet name of your choosing
```
## More about validators

Please refer to the Cosmos Hub documentation on validators for a general overview of running a validator. We are using the exact same validator model and software, but with slightly different parameters and other functionality specific to the Cosmic Horizon Network.

* [Run a Validator](https://hub.cosmos.network/main/validators/validator-setup.html)
* [Validators Overview](https://hub.cosmos.network/main/validators/overview.html)
* [Validator Security](https://hub.cosmos.network/main/validators/security.html)
* [Validator FAQ](https://hub.cosmos.network/main/validators/validator-faq.html)
