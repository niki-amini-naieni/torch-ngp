#!/bin/bash
docker run -it -e WANDB_API_KEY=$WANDB_API_KEY --user $(id -u) -v $(pwd):/home/duser -it --gpus "device=$1" cleanrl ${@:2}
