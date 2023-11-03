#!/bin/bash
xhost +
docker run -it -e WANDB_API_KEY=$WANDB_API_KEY --user 0 -v $(pwd):/home/duser -it -v /tmp/.X11-unix:/tmp/.X11-unix:ro  --privileged -e DISPLAY  --net=host --gpus "all" torch_ngp ${@:2}
