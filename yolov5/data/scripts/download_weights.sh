#!/bin/bash
# YOLOv5 🚀 by Ultralytics, GPL-3.0 license
# Download latest models from https://github.com/ultralytics/yolov5/releases
# Example usage: bash data/scripts/download_weights.sh
# parent
# └── yolov5
#     ├── yolov5s.pt  ← downloads here
#     ├── yolov5m.pt
#     └── ...
# wget https://ghproxy.com/https://github.com/ultralytics/yolov5/releases/download/v6.2/yolov5n.pt

python - <<EOF
from utils.downloads import attempt_download

p5 = ['n', 's', 'm', 'l', 'x']  # P5 models
p6 = [f'{x}6' for x in p5]  # P6 models
cls = [f'{x}-cls' for x in p5]  # classification models

for x in p5 + p6 + cls:
    attempt_download(f'weights/yolov5{x}.pt')

EOF
