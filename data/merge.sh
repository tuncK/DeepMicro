#!/bin/bash


for set in Cirrhosis Colorectal IBD Obesity T2D WT2D; do
    mv marker_$set.txt marker_$set.tsv
    mv abundance_$set.txt abundance_$set.tsv
    cp marker_$set.tsv combined_$set.tsv
    tail -n +212 abundance_$set.tsv >> combined_$set.tsv
done

gzip *.tsv -v

