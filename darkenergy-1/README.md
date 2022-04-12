# Cosmic Horizon Network Testnet: darkmatter-1 Testnet

### Quick Links
Genesis: TBA

Git tag: coho v0.1

Block explorer: **coming soon**

Seeds: TBA

#### Hardware Requirements
Here are the minimal hardware configs required for running a validator/sentry node
 - 8GB RAM
 - 4vCPUs
 - 200GB Disk space

#### Software Requirements
- Ubuntu 18.04 or higher
- [Go v1.8](https://golang.org/doc/install)
- [Starport](https://docs.starport.network/guide/install.html)

### Installation Steps

#### Install Prerequisites

The following are necessary to build Cosmic Horizon from source. 

##### 1. Basic Packages
```bash:
# update the local package list and install any available upgrades 
sudo apt-get update && sudo apt upgrade -y 
# install toolchain and ensure accurate time synchronization 
sudo apt-get install make build-essential gcc git jq chrony -y
```

##### 2. Install Go
Follow the instructions [here](https://golang.org/doc/install) to install Go.

Alternatively, for Ubuntu LTS, you can do:
```bash:
wget https://golang.org/dl/go1.18.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.18.linux-amd64.tar.gz
```

Unless you want to configure in a non standard way, then set these in the `.profile` in the user's home (i.e. `~/`) folder.

```bash:
cat <<EOF >> ~/.profile
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GO111MODULE=on
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
EOF
source ~/.profile
go version
```
Output should be: `go version go1.8 linux/amd64`

##### 3. Install Starport
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

#### Install Cosmic Horizon from source

##### 1. Clone repository
```bash:
https://github.com/cosmic-horizon/coho.git
cd coho
git checkout v0.1
starport chain build
```

#### 2. Add the name of the node to a variable and check
```bash:
MONIKER_NAME="Your_node_name"
echo $MONIKER_NAME
```

#### 2.1 Init chain
```bash:
cohod init $MONIKER_NAME --chain-id darkenergy-1
```

#### 3. Add/recover keys
```bash:
# To create new keypair - make sure you save the mnemonics!
cohod keys add <key-name> 

# Restore existing odin wallet with mnemonic seed phrase. 
# You will be prompted to enter mnemonic seed. 
cohod keys add <key-name> --recover
```

### Instructions for Genesis Validators

#### Create Gentx

##### 1. Add genesis account:
```
cohod add-genesis-account <key-name> 1000000000ucoho --keyring-backend os
```

##### 2. Create Gentx
```
cohod gentx <key-name> 1000000000ucoho \
--chain-id darkenergy-1 \
--moniker="<moniker>" \
--commission-max-change-rate=0.01 \
--commission-max-rate=0.20 \
--commission-rate=0.05 \
--details="XXXXXXXX" \
--security-contact="XXXXXXXX" \
--website="XXXXXXXX"
```

#### Submit PR with Gentx and peer id
1. Copy the contents of ${HOME}/.cohod/config/gentx/gentx-XXXXXXXX.json.
2. Fork https://github.com/cosmic-horizon/testnets
3. Create a file gentx-{{VALIDATOR_NAME}}.json under the networks/testnets/darkenergy-1/gentx folder in the forked repo, paste the copied text into the file.
4. Create a Pull Request to the main branch of the repository

### Await further instruction!
