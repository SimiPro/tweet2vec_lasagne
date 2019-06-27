#!/bin/bash

# specify train and validation files here
traindata="../my_training_file_25000.txt"
valdata="../my_testing_file_25000.txt"

# specify model name here
exp="tweet2vec"

# model save path
modelpath="model/$exp/"
mkdir -p $modelpath

# train
echo "Training..."
python char.py $traindata $valdata $modelpath

