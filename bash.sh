#! /bin/bash
sudo apt update
sudo apt install neofetch htop -y
curl https://raw.githubusercontent.com/Cretezy/Swap/master/swap.sh -O swap
sh swap 4G
sudo apt install docker.io docker-compose -y
sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
curl -fsSL https://tailscale.com/install.sh | sh
