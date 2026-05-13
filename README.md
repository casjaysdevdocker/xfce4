## 👋 Welcome to xfce4 🚀  

xfce4 README  
  
  
## Install my system scripts  

```shell
 sudo bash -c "$(curl -q -LSsf "https://github.com/systemmgr/installer/raw/main/install.sh")"
 sudo systemmgr --config && sudo systemmgr install scripts  
```
  
## Automatic install/update  
  
```shell
dockermgr update xfce4
```
  
## Install and run container
  
```shell
dockerHome="/var/lib/srv/$USER/docker/casjaysdevdocker/xfce4/xfce4/latest/rootfs"
mkdir -p "/var/lib/srv/$USER/docker/xfce4/rootfs"
git clone "https://github.com/dockermgr/xfce4" "$HOME/.local/share/CasjaysDev/dockermgr/xfce4"
cp -Rfva "$HOME/.local/share/CasjaysDev/dockermgr/xfce4/rootfs/." "$dockerHome/"
docker run -d \
--restart always \
--privileged \
--name casjaysdevdocker-xfce4-latest \
--hostname xfce4 \
-e TZ=${TIMEZONE:-America/New_York} \
-v "$dockerHome/data:/data:z" \
-v "$dockerHome/config:/config:z" \
-p 80:80 \
casjaysdevdocker/xfce4:latest
```
  
## via docker-compose  
  
```yaml
version: "2"
services:
  ProjectName:
    image: casjaysdevdocker/xfce4
    container_name: casjaysdevdocker-xfce4
    environment:
      - TZ=America/New_York
      - HOSTNAME=xfce4
    volumes:
      - "/var/lib/srv/$USER/docker/casjaysdevdocker/xfce4/xfce4/latest/rootfs/data:/data:z"
      - "/var/lib/srv/$USER/docker/casjaysdevdocker/xfce4/xfce4/latest/rootfs/config:/config:z"
    ports:
      - 80:80
    restart: always
```
  
## Get source files  
  
```shell
dockermgr download src casjaysdevdocker/xfce4
```
  
OR
  
```shell
git clone "https://github.com/casjaysdevdocker/xfce4" "$HOME/Projects/github/casjaysdevdocker/xfce4"
```
  
## Build container  
  
```shell
cd "$HOME/Projects/github/casjaysdevdocker/xfce4"
buildx 
```
  
## Authors  
  
🤖 casjay: [Github](https://github.com/casjay) 🤖  
⛵ casjaysdevdocker: [Github](https://github.com/casjaysdevdocker) [Docker](https://hub.docker.com/u/casjaysdevdocker) ⛵  
