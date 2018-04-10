#!/bin/sh

prototxt='CNN_bn_bottleneck.prototxt'
caffemodel='snapshot/CNN_bn_bottleneck_iter_10000.caffemodel'
gpu=1

/home/lgq/Workspace/caffe/build/tools/caffe test --model $prototxt --weights $caffemodel --gpu $gpu --iterations 10000 2>&1 |tee ../log/test/CNN_bn_bottleneck_iter_10000.log
