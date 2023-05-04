#!/usr/bin/env bash

set -x

EXP_DIR=exps/OWOD_t1
PY_ARGS=${@:1}

python -u main_open_world.py \
    --output_dir ${EXP_DIR} --dataset owod --num_queries 100 --eval_every 2 \
    --PREV_INTRODUCED_CLS 0 --CUR_INTRODUCED_CLS 20 --data_root './data/OWDETR' --train_set 't1_train' --test_set 'test' --num_classes 81 \
    --unmatched_boxes --epochs 50 --top_unk 5 --featdim 1024 --NC_branch --nc_loss_coef 0.1 --nc_epoch 9 \
    --backbone 'dino_resnet50' \
    ${PY_ARGS}