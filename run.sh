#!/bin/bash

common_opts="-m svm_rf -r 3 -t $(nproc)"
for dim in 32 64 256 512; do
    group_opts="--ae -dm $dim"    
    for dataset in Cirrhosis Colorectal IBD Obesity T2D WT2D; do
        mkdir -p results
        python DM.py -d abundance_$dataset $group_opts ${common_opts}
        python DM.py -d marker_$dataset $group_opts ${common_opts}
        python DM.py -d combined_$dataset $group_opts ${common_opts}
        mv results results_${dim}_$dataset
    done
done


