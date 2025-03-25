# X Server Passthrough

The following should open up a Xterm window on your host machine
```sh
docker build -t gui-test .
docker run -ti -e DISPLAY -v $XAUTHORITY:/root/.Xauthority -v /tmp/.X11-unix:/tmp/.X11-unix --net=host gui-test
```
