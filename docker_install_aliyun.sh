curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh --mirror Aliyun
sudo systemctl enable docker
sudo systemctl start docker
sudo groupadd docker
sudo usermod -aG docker
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://ic8qtr5k.mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
sudo systemctl daemon-reload
sudo systemctl restart docker