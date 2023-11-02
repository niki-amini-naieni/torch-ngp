#!/bin/bash
docker run -it -e WANDB_API_KEY=$WANDB_API_KEY --user 0 -v $(pwd):/home -it --gpus "device=$1" cleanrl ${@:2}
