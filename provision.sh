sudo apt update
sudo apt-get install docker.io -y
sudo systemctl enable --now docker
sudo usermod -aG docker user
git clone "https://github.com/CallumHoughton18/Doom-In-Docker"
cd Doom-In-Docker/
sudo docker build -t doom:latest .
sudo docker run -dp 8080:8080 --name doom doom:latest
