# Cosmic Horizon service file
```
sudo tee <<EOF >/dev/null $HOME/cohod.service
[Unit]
Description=Cohod Node
After=network-online.target
[Service]
User=$USER
ExecStart= $(which cohod) start
Restart=on-failure
RestartSec=3
LimitNOFILE=65535
[Install]
WantedBy=multi-user.target
EOF

sudo mv $HOME/cohod.service /etc/systemd/system
```
## Start service commands
```
sudo systemctl daemon-reload
sudo systemctl enable cohod
sudo systemctl restart cohod
```
## View service logs
```
journalctl -u cohod -f
```
