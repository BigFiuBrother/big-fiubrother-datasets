#!/usr/bin/env bash

for N in {1..4}; do \
python3 ../mtcnn_align/align_dataset_mtcnn.py \
raw \
aligned \
--image_size 160 \
--margin 32 \
--random_order \
--gpu_memory_fraction 0.25 \
& done
