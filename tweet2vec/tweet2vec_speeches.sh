#!/bin/bash

# specify data file here
datafile="../misc/encoder_example.txt"

# specify model path here
modelpath="best_model/"

# specify result path here
resultpath="result/"

mkdir -p $resultpath

# test
python encode_char.py $datafile $modelpath $resultpath

for filename in /home/simi/projects/robot/speeches/tweet2vec_input_*.txt; do
    echo $filename
    # ... rest of the loop body
done
