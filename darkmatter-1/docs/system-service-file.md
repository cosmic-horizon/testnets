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
LimitNOFILE=10000	
[Install]	
WantedBy=multi-user.target	
EOF
	
sudo mv $HOME/cohod.service /etc/systemd/system/
	
sudo systemctl daemon-reload	
sudo systemctl enable cohod	
sudo systemctl restart cohod	
journalctl -u cohod -f	
```
