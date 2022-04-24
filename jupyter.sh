#!/bin/sh
docker run -it \
    --rm \
    -v "$(pwd):/tf/tmp" \
    -e DISPLAY=$DISPLAY \
    --gpus all \
    -p 8888:8888 \
    pytorch jupyter-notebook --allow-root --no-browser --ip 0.0.0.0
