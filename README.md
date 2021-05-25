# ubuntu-tstool
This docker image provides some basic trouble shooting tools to debug some issues in hostOS. 

## Build the image
docker build -t ubuntu/tstool:latest
##### **Or build the image with a proxy**
docker build --build-arg http_proxy=\<proxy-server\> --build-arg https_proxy=\<proxy-server\> -t ubuntu/tstool:latest .
## Start the docker
docker run -d -t --pid=host --net=host -v $(pwd):/mnt/ --cap-add sys_admin --cap-add SYS_PTRACE
--security-opt seccomp=unconfined --security-opt apparmor=unconfined --name mytool ubuntu/tstool:latest
