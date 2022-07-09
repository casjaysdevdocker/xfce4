# 👋 xfce4 Readme 👋

xfce4 README

## Run container

### via command line

```shell
docker run -d \
--restart always \
--name xfce4 \
--net=host \
-e HOSTNAME=xfce4 \
-e TZ=${TIMEZONE:-America/New_York} \
-e DISPLAY=$DISPLAY \
-v $HOME/.Xauthority:/root/.Xauthority \
-v /tmp/.X11-unix:/tmp/.X11-unix \
casjaysdev/xfce4:latest
```

### via docker-compose

```yaml
version: "2"
services:
  xfce4:
    image: casjaysdevdocker/xfce4
    container_name: xfce4
    environment:
      - TZ=America/New_York
      - HOSTNAME=xfce4
    volumes:
      - $HOME/.local/share/docker/storage/xfce4/data:/data
      - $HOME/.local/share/docker/storage/xfce4/config:/config
    ports:
      - 80:80
    restart: always
```

## Authors  

🤖 Casjay: [Github](https://github.com/casjay) [Docker](https://hub.docker.com/casjay) 🤖  
⛵ CasjaysDev: [Github](https://github.com/casjaysdev) [Docker](https://hub.docker.com/casjaysdev) ⛵  
