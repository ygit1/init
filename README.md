
# bashrc
curl -sL https://raw.githubusercontent.com/ygit1/init/main/.bashrc >> ~/.bashrc
#wget -qO- https://raw.githubusercontent.com/ygit1/init/main/.bashrc >> ~/.bashrc

# tmux
curl -sL https://raw.githubusercontent.com/ygit1/init/refs/heads/main/.tmux.conf >> ~/.tmux.conf
tmux source-file ~/.tmux.conf

# node
apt update -y; apt install nodejs npm;
npm i -g n; n stable; exec $SHELL -l; node -v; npm -v
npm install -g @anthropic-ai/claude-code


# Docker
docker run -d -p 8080:80 --name nginx-server docker-ubuntu                                    
docker-compose up -d

docker-compose exec ubuntu bash
docker-compose down
