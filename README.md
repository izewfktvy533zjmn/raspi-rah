# raspi-rah
## Overview
Run Rosetta@home in Docker container on Raspberry Pi with arm64v8.

&nbsp;



## Prerequisites
### Raspberry Pi 4
 - [ubuntu-18.04.4-preinstalled-server-arm64+raspi3.img](https://ubuntu.com/download/raspberry-pi)

### Docker
 - v19.03.8

&nbsp;



## Usage
The following command runs Rosetta@home in Docker contaienr.

```
docker run -d  \
  --name raspi-rah \
  --env ROSETTA_AT_HOME_ACCOUNT_KEY=<your_account_key> \
  izewfktvy533zjmn/raspi-rah
```

Enter your Rosetta@home account keys in _**"\<your_account_key\>"**_ .  

If you want to see tasks progress, you should issue a command via,

```
docker exec raspi-rah /usr/bin/boinccmd --get_tasks
```

&nbsp;



## More Info
- How to build it yourself: ```docker build -t raspi-rah ./```
- Shell access whilst the container is running: ```docker exec -it raspi-rah /bin/bash```
- Monitor the logs of the container in real-time: ```docker logs -f raspi-rah```
