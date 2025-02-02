# AI
AI Experiments

## Installing the NVIDIA Container Toolkit

Follow the instructions at https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html

Here is a quick script for Debian based distros:

```
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

sudo apt-get update
sudo apt-get install -y nvidia-container-toolkit

sudo nvidia-ctk runtime configure --runtime=docker

sudo systemctl restart docker

```

## Running all the required services using Docker Compose

Clone the repo
```
git clone git@github.com:clickbg/AI.git
```

Create the required directories
```
cd ./AI
mkdir -p ./data/db
chown -R 1000:1000 /home/$USER/AI/data
```

## Start our new AI buddy

Simply navigate to the directory where you have placed your project and start it:
```
make start
make install 
make restart
```

